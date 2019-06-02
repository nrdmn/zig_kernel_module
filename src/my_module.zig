extern fn printk([*]const u8) void;

export fn my_module_init() c_int {
    printk(c"hello\n");
    return 0;
}

export fn my_module_exit() void {
    printk(c"bye\n");
}
