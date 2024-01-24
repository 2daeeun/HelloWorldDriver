#include <linux/module.h> // included for all kernel modules
// #include <linux/kernel.h> // included for KERN_INFO
#include <linux/init.h> // included for __init and __exit macros

// Meta Information
MODULE_LICENSE("GPL");
MODULE_AUTHOR("2daeeun");
MODULE_DESCRIPTION("print Hello World");

// 이 함수는 모듈이 커널에 로드될 때 호출됩니다.
static int __init hello_world_func(void)
{
	printk("Hello World\n");

	return 0;
}

// 이 함수는 모듈이 커널에서 제거될 때 호출됩니다.
static void __exit good_bye_func(void)
{
	printk("Good Bye\n");
}

module_init(hello_world_func);
module_exit(good_bye_func);
