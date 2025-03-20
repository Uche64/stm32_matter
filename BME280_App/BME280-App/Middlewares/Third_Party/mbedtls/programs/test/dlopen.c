/*
 *  Test direct linking of MbedTLS for STM32
 *
 *  Copyright The Mbed TLS Contributors
 *  SPDX-License-Identifier: Apache-2.0
 */

#include "mbedtls/build_info.h"
#include "mbedtls/platform.h"
#include "mbedtls/ssl.h"
#include "mbedtls/x509_crt.h"
#include "mbedtls/md.h"

int main(void)
{
    unsigned int n = 0;

    /* Direct function call to get the list of supported ciphersuites */
    const int *ciphersuites = mbedtls_ssl_list_ciphersuites();
    while (ciphersuites[n] != 0) {
        n++; // Count the available ciphersuites
    }

    mbedtls_printf("MbedTLS: %u ciphersuites supported\n", n);

    /* Directly access the default X.509 certificate profile */
    const mbedtls_x509_crt_profile *profile = &mbedtls_x509_crt_profile_default;
    mbedtls_printf("MbedTLS: Allowed md mask: %08x\n", (unsigned) profile->allowed_mds);

    /* Direct function call to get the list of available hash algorithms */
    unsigned int m = 0;
    const int *mds = mbedtls_md_list();
    while (mds[m] != 0) {
        m++; // Count the available hash algorithms
    }

    mbedtls_printf("MbedTLS: %u hash functions available\n", m);

    return 0;
}
