#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

uint32_t fletcher32(const uint16_t *data, size_t len)
{
    uint32_t c0, c1;
    len = (len + 1) & ~1; /* Round up len to words */

    /* We similarly solve for n > 0 and n * (n+1) / 2 * (2^16-1) < (2^32-1)
     * here.
     */
    /* On modern computers, using a 64-bit c0/c1 could allow a group size of
     * 23726746. */
    for (c0 = c1 = 0; len > 0;) {
        size_t blocklen = len;
        if (blocklen > 360 * 2) {
            blocklen = 360 * 2;
        }
        len -= blocklen;
        do {
            c0 = c0 + *data++;
            c1 = c1 + c0;
        } while ((blocklen -= 2));
        c0 = c0 % 65535;
        c1 = c1 % 65535;
    }
    return (c1 << 16 | c0);
}

int main()
{
    // Similarly to femtocontainers. The checksum algorithm is run on a 360B
    // string (i.e. it contains 360 characters.
    char *message =
        "This is a test message for the Fletcher32 checksum algorithm.\n"
        "It is 360 characters long to replicate the workflow under which the"
        "femtocontainers implementation was tested.\n"
        "The aim of this test the performance of the rBPF VM running on a "
        "microcontroller"
        "and compare it against the native execution.\n"
        "The next step: test the same workflow on stm32 microcontroller";

    uint16_t *data = (uint16_t *)message;

    uint32_t checksum = fletcher32(data, strlen(message));
    printf("Checksum: %d\n", checksum);
}
