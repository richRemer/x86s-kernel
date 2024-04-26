#ifndef SYSTEM_H
#define SYSTEM_H

#include "attr.h"
#include "syscall.h"

int write(unsigned int, const char*, unsigned int) sysv;
void exit(int) noret sysv;

#endif
