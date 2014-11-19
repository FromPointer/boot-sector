#  This is source code from book: "how to make a simple os"

## Test Tools:
   qemu
   bochs

## Dirctory: bios-boot-sector
  bios-boot-sector is 16bit real mode boot sector code

## Dirctory: boot-sector-pm
  boot-sector is boot sector code in 32bit protect mode

#  Usage:
    nasm [filename] -f bin -o [dest_filename]
    Eg: name boot_helloworld.asm -f bin -o boot_helloworld.bin


#  BOCHS usage:


#  QEMU usage:
    qemu-system-i386 [bin_filename]
    Eg: qemu-system-i386 boot_helloworld.bin


