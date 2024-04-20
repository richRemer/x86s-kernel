Intel has published a proposal for a new legacy-reduced architecture called
[x86S](https://cdrdv2.intel.com/v1/dl/getContent/776648) (PDF).  This
architecture is intended to simplify systems that for long have had no need for
real-mode execution or any other such thing.

This project is my attempt to run through what a minimial boot and kernel
process looks like in the new architecture.

x86S Booting Changes
====================

All Long Mode All The Time
--------------------------
> **3.3 Removal of 16-Bit and 32-Bit Protected Mode**  
> 16-bit and 32-bit protected mode are not supported anymore and cannot be
> entered. The CPU always operates in long mode.

Reset State
-----------
> **3.11 64-Bit Reset**
> The CPU starts executing in 64-bit paged mode with a 4-level page table after
> reset. The fixed reset RIP is the standard reset vector 0xFFFFFFF0 but is
> entered as 64-bit. The fixed reset CR3 value is 0xFFFFE000.
