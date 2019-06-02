# Zig Kernel Module

This is a 'hello world' kernel module in [Zig](https://github.com/ziglang/zig).

1. Build with `make`.
1. Try it:
```
$ sudo insmod my_module.ko
$ sudo rmmod my_module.ko
$ dmesg | tail -2
[90804.834449] hello
[90806.285959] bye
```
