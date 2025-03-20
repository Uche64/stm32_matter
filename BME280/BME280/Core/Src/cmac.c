/**************************************************************************
Copyright (C) 2009 Lander Casado, Philippas Tsigas

All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files
(the "Software"), to deal with the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimers. Redistributions in
binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimers in the documentation and/or
other materials provided with the distribution.

In no event shall the authors or copyright holders be liable for any special,
incidental, indirect or consequential damages of any kind, or any damages
whatsoever resulting from loss of use, data or profits, whether or not
advised of the possibility of damage, and on any theory of liability,
arising out of or in connection with the use or performance of this software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS WITH THE SOFTWARE

*****************************************************************************/
#include <stdint.h>
#include "aes.h"
#include "cmac.h"
#include "utilities.h"

#define LSHIFT( v, r )                                    \
    do                                                    \
    {                                                     \
        int32_t i;                                        \
        for( i = 0; i < 15; i++ )                         \
            ( r )[i] = ( v )[i] << 1 | ( v )[i + 1] >> 7; \
        ( r )[15] = ( v )[15] << 1;                       \
    } while( 0 )

#define XOR( v, r )                         \
    do                                      \
    {                                       \
        int32_t i;                          \
        for( i = 0; i < 16; i++ )           \
        {                                   \
            ( r )[i] = ( r )[i] ^ ( v )[i]; \
        }                                   \
    } while( 0 )

static void xor_128(const uint8_t *a, const uint8_t *b, uint8_t *out) {
    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
        out[i] = a[i] ^ b[i];
    }
}

static void left_shift_one_bit(const uint8_t *input, uint8_t *output) {
    uint8_t overflow = 0;
    for (int i = AES_BLOCK_SIZE - 1; i >= 0; i--) {
        output[i] = (input[i] << 1) | overflow;
        overflow = (input[i] & 0x80) ? 1 : 0;
    }
}

void AES_CMAC(const uint8_t *key, const uint8_t *input, uint32_t length, uint8_t *output) {
    uint8_t L[AES_BLOCK_SIZE] = {0};
    uint8_t K1[AES_BLOCK_SIZE] = {0};
    uint8_t K2[AES_BLOCK_SIZE] = {0};
    uint8_t X[AES_BLOCK_SIZE] = {0};
    uint8_t M_last[AES_BLOCK_SIZE] = {0};
    uint8_t padded[AES_BLOCK_SIZE] = {0};

    // Step 1: AES encrypt the zero block to get L
    aes_encrypt(key, L, L);

    // Step 2: Generate subkeys K1 and K2
    left_shift_one_bit(L, K1);
    if (L[0] & 0x80) K1[AES_BLOCK_SIZE - 1] ^= 0x87;

    left_shift_one_bit(K1, K2);
    if (K1[0] & 0x80) K2[AES_BLOCK_SIZE - 1] ^= 0x87;

    // Step 3: Padding if needed
    uint32_t n = (length + AES_BLOCK_SIZE - 1) / AES_BLOCK_SIZE;
    int flag = (length % AES_BLOCK_SIZE) == 0;

    if (flag) {
        xor_128(&input[(n - 1) * AES_BLOCK_SIZE], K1, M_last);
    } else {
        memcpy(padded, &input[(n - 1) * AES_BLOCK_SIZE], length % AES_BLOCK_SIZE);
        padded[length % AES_BLOCK_SIZE] = 0x80;
        xor_128(padded, K2, M_last);
    }

    // Step 4: Process message blocks
    memset(X, 0, AES_BLOCK_SIZE);
    for (int i = 0; i < n - 1; i++) {
        xor_128(X, &input[i * AES_BLOCK_SIZE], X);
        aes_encrypt(key, X, X);
    }

    xor_128(X, M_last, X);
    aes_encrypt(key, X, output);
}

void AES_CMAC_Init( AES_CMAC_CTX* ctx )
{
    memset1( ctx->X, 0, sizeof ctx->X );
    ctx->M_n = 0;
    memset1( ctx->rijndael.ksch, '\0', 240 );
}

void AES_CMAC_SetKey( AES_CMAC_CTX* ctx, const uint8_t key[AES_CMAC_KEY_LENGTH] )
{
    aes_set_key( key, AES_CMAC_KEY_LENGTH, &ctx->rijndael );
}

void AES_CMAC_Update( AES_CMAC_CTX* ctx, const uint8_t* data, uint32_t len )
{
    uint32_t mlen;
    uint8_t  in[16];

    if( ctx->M_n > 0 )
    {
        mlen = MIN( 16 - ctx->M_n, len );
        memcpy1( ctx->M_last + ctx->M_n, data, mlen );
        ctx->M_n += mlen;
        if( ctx->M_n < 16 || len == mlen )
            return;
        XOR( ctx->M_last, ctx->X );

        memcpy1( in, &ctx->X[0], 16 );  // Otherwise it does not look good
        aes_encrypt( in, in, &ctx->rijndael );
        memcpy1( &ctx->X[0], in, 16 );

        data += mlen;
        len -= mlen;
    }
    while( len > 16 )
    { /* not last block */

        XOR( data, ctx->X );

        memcpy1( in, &ctx->X[0], 16 );  // Otherwise it does not look good
        aes_encrypt( in, in, &ctx->rijndael );
        memcpy1( &ctx->X[0], in, 16 );

        data += 16;
        len -= 16;
    }
    /* potential last block, save it */
    memcpy1( ctx->M_last, data, len );
    ctx->M_n = len;
}

void AES_CMAC_Final( uint8_t digest[AES_CMAC_DIGEST_LENGTH], AES_CMAC_CTX* ctx )
{
    uint8_t K[16];
    uint8_t in[16];
    /* generate subkey K1 */
    memset1( K, '\0', 16 );

    aes_encrypt( K, K, &ctx->rijndael );

    if( K[0] & 0x80 )
    {
        LSHIFT( K, K );
        K[15] ^= 0x87;
    }
    else
        LSHIFT( K, K );

    if( ctx->M_n == 16 )
    {
        /* last block was a complete block */
        XOR( K, ctx->M_last );
    }
    else
    {
        /* generate subkey K2 */
        if( K[0] & 0x80 )
        {
            LSHIFT( K, K );
            K[15] ^= 0x87;
        }
        else
            LSHIFT( K, K );

        /* padding(M_last) */
        ctx->M_last[ctx->M_n] = 0x80;
        while( ++ctx->M_n < 16 )
            ctx->M_last[ctx->M_n] = 0;

        XOR( K, ctx->M_last );
    }
    XOR( ctx->M_last, ctx->X );

    memcpy1( in, &ctx->X[0], 16 );  // Otherwise it does not look good
    aes_encrypt( in, digest, &ctx->rijndael );
    memset1( K, 0, sizeof K );
}
