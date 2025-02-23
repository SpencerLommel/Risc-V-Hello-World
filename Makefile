default:
	rm -f hello
	riscv64-unknown-elf-gcc -march=rv32g -mabi=ilp32 -static -fvisibility=hidden -nostdlib -nostartfiles -T linker.ld hello.s -o hello

test: default
	qemu-system-riscv32 -machine sifive_e -nographic -bios none -kernel hello

clean:
	rm -f hello
