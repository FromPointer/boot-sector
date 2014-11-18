
## About bios-boot-sector directory
  bios-boot-sector is 16bit real mode boot sector code 

# Usage:
    nasm [filename] -f bin -o [dest_filename]
    Eg: name boot_helloworld.asm -f bin -o boot_helloworld.bin


# BOCHS usage:


# QEMU usage:
    qemu-system-i386 [bin_filename]
    Eg: qemu-system-i386 boot_helloworld.bin


