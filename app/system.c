#include "system.h"

int write(unsigned int fd, const char* buf, unsigned int len) {
    return sys_write(fd, buf, len);
}

void exit(int status) {
    sys_exit(status);
}
