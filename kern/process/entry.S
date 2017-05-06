.text
.globl kernel_thread_entry
kernel_thread_entry:        # void kernel_thread(void)
    # 在kernel_thread函数中，将进程主函数保存在ebx中，参数指针保存在edx中
    pushl %edx              # push arg
    call *%ebx              # call fn

    pushl %eax              # save the return value of fn(arg)
    call do_exit            # call do_exit to terminate current thread

