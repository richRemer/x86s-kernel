#ifndef SYSCALL_H
#define SYSCALL_H

#include "attr.h"

int sys_write(unsigned int, const char*, unsigned int) sysv;
void sys_exit(int) noret sysv;

#endif
