BITS 64

GLOBAL sys_write;
GLOBAL sys_exit;

SECTION .text

sys_write:
    mov rax, 1          ; 'write'
    syscall             ; execute 'write'
    ret                 ; return bytes written or -ERRNO

sys_exit:
    mov rax, 60         ; 'exit'
    syscall             ; execute 'exit'
    ret                 ; unreachable if sane
