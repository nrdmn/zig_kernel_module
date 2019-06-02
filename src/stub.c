#include <linux/module.h>

#include "my_module.h"

static int __init stub_init(void)
{
	return my_module_init();
}

static void __exit stub_exit(void)
{
	my_module_exit();
}

module_init(stub_init);
module_exit(stub_exit);

MODULE_LICENSE("MIT");
