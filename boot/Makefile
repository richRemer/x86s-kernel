inc = gnu-efi/inc
lds = gnu-efi/gnuefi/elf_x86_64_efi.lds
crt0 = gnu-efi/x86_64/gnuefi/crt0-efi-x86_64.o
lib = gnu-efi/x86_64/lib
gnuefi = gnu-efi/x86_64/gnuefi

uefi_gcc_opts = -fpic -ffreestanding -fno-stack-protector -fno-stack-check \
				-fshort-wchar -mno-red-zone -maccumulate-outgoing-args
uefi_ld_opts  = -shared -Bsymbolic -lgnuefi -lefi
uefi_obj_opts = -j .text -j .sdata -j .data -j .rodata -j .dynamic -j .dynsym \
				-j .rel -j .rela -j .rel.* -j .rela.* -j .reloc \
				--target efi-app-x86_64 --subsystem=10

default: loader.efi

clean:
	rm -rf gnu-efi

gnu-efi:
	git clone https://git.code.sf.net/p/gnu-efi/code $@
	make -C $@

loader.o: loader.c
	gcc -I$(inc) $(uefi_gcc_opts) -c $< -o $@

loader.so: loader.o
	ld -L$(lib) -L$(gnuefi) -T$(lds) $(uefi_ld_opts) $(crt0) $< -o $@

loader.efi: loader.so
	objcopy $(uefi_obj_opts) $< $@

.PHONY: default clean
