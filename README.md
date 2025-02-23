Just a simple Hello World program I wrote in Risc-V assembly. It actually loops over the string until it hits a null terminator (end of string) so this works with strings of variable length very well!

# 1. Requirements 
- sudo apt install qemu-system-riscv32
- sudo apt install gcc-riscv64-unknown-elf

# 2. Compiling and running

You can either compile and run automatically with `make test` or by running `riscv64-unknown-elf-gcc -march=rv32g -mabi=ilp32 -static -fvisibility=hidden -nostdlib -nostartfiles -T linker.ld hello.s -o hello` to compile and then `qemu-system-riscv32 -machine sifive_e -nographic -bios none -kernel hello` to run


![image](https://github.com/user-attachments/assets/051f4222-bda3-42ab-8d25-ca166b76d1d0)
