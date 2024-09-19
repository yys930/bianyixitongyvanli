.option nopic
.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
.attribute unaligned_access, 0
.attribute stack_align, 16

    .data
arr:        .space 20                 # 为数组分配空间，5个整数，每个4字节
prompt1:    .string "请输入5个整数：\n"
prompt2:    .string "排序后的结果为：\n"
format_in:  .string "%d"
format_out: .string "%d "
newline:    .string "\n"

    .text
    .globl main

main:
    # 保存寄存器并分配栈空间
    addi sp, sp, -32                 # 为返回地址和s寄存器分配栈空间
    sd ra, 24(sp)                    # 保存返回地址
    sd s0, 16(sp)                    # 保存s0寄存器
    sd s1, 8(sp)                     # 保存s1寄存器
    addi s0, sp, 32                  # 设置帧指针
    
    # 输出 "请输入5个整数："
    la a0, prompt1                   # 加载提示字符串地址
    call printf                      # 调用 printf 输出提示信息

    # 读取用户输入的5个整数
    la s1, arr                       # s1 指向数组的基地址
    li t2, 0                         # 初始化 t2 为 0
read_loop:
    la a0, format_in                 # 加载输入格式
    mv a1, s1                        # 加载当前数组元素的地址
    call scanf                       # 调用 scanf 读取用户输入

    addi s1, s1, 4                   # 移动到下一个数组元素
    addi t2, t2, 1                   # t2++
    li t1, 5
    blt t2, t1, read_loop         # 如果已输出数量 < 总数，则继续循环



sort_loop_start:
    li t3, 0                         # 初始化 i
outer_loop:
    li t1, 4                         # 外循环次数 4 次 (i的范围是0到3)
    beq t3, t1, output_result        # 如果外循环结束 (i == 4)，跳到结果输出

    # 内循环次数设置为 4 - i
    li t2, 4                         # t2 = 4
    sub t2, t2, t3                   # t2 = 4 - i

    la s1, arr                       # s1 指向数组基地址
inner_loop:
    beq t2, zero, decrement_outer         # 如果 t2 == 0，跳到外循环减计数
    lw t4, 0(s1)                     # 加载 arr[j]
    lw t5, 4(s1)                     # 加载 arr[j+1]
    ble t4, t5, skip_swap            # 如果 arr[j] <= arr[j+1]，跳过交换

    # 交换 arr[j] 和 arr[j+1]
    sw t5, 0(s1)                     # arr[j] = arr[j+1]
    sw t4, 4(s1)                     # arr[j+1] = arr[j]

skip_swap:
    addi s1, s1, 4                   # 移动到下一个元素
    addi t2, t2, -1                  # 内循环计数减1
    j inner_loop

decrement_outer:
    addi t3, t3, 1                   # 外循环计数 i++
    j outer_loop




# 输出排序后的结果
output_result:
    la a0, prompt2                   # 输出 "排序后的结果为："
    call printf                      # 调用 printf 输出提示信息

    la s1, arr                       # s1 指向数组基地址
    li t2, 0                         # 初始化已输出的数量为0

output_loop:
    lw a1, 0(s1)                     # 加载当前数组元素的值
    la a0, format_out                # 加载输出格式
    call printf                      # 调用 printf 输出数组元素

    addi s1, s1, 4                   # 移动到下一个数组元素
    addi t2, t2, 1                   # 已输出数量加1
    li t1, 5
    blt t2, t1, output_loop         # 如果已输出数量 < 总数，则继续循环

 
finish:
    la a0, newline                   # 输出换行符
    call printf

    # 恢复寄存器并退出
    ld ra, 24(sp)                    # 恢复返回地址
    ld s0, 16(sp)                    # 恢复 s0 寄存器
    ld s1, 8(sp)                     # 恢复 s1 寄存器
    addi sp, sp, 32                  # 恢复栈指针

    li a0, 0                         # 将退出状态设置为 0（成功）
    li a7, 93                        # ecall 93 是退出程序的 syscall 编号
    ecall                            # 调用退出系统调用
