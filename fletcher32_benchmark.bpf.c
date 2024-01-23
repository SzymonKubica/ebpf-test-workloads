#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <linux/bpf.h>
#include <bpf/bpf_helpers.h>

/*
 * This version of the fletcher32 checksum algorithm has been optimised for
 * performance testing. No calls to the helper functions are performed.
 * It seems like the larger string works now.
 *
 */

SEC("fletcher32")
int fletcher_32(void *ctx)
{
    // Similarly to femtocontainers. The checksum algorithm is run on a 360B
    // string (i.e. it contains 360 characters.
    char *message =
        "This is a test message for the Fletcher32 checksum algorithm.\n";

    uint16_t *data = (uint16_t *)message;

    // Algorithm needs the length in words
    size_t len = strlen(message) / 2;

    uint32_t c0 = 0;
    uint32_t c1 = 0;

    // Checksum magic
    for (c0 = c1 = 0; len > 0;) {
        size_t blocklen = len;
        if (blocklen > 360 * 2) {
            blocklen = 360 * 2;
        }
        len -= blocklen;
        for (size_t i = 0; i < blocklen; i += 2) {
            char c = *(data);
            c0 = c0 + c;
            c1 = c1 + c0;
            data += 1;
        }
        c0 = c0 % 65535;
        c1 = c1 % 65535;
    }

    uint32_t checksum = (c1 << 16 | c0);

    return checksum;
}
