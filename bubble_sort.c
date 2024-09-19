#include <stdio.h>

int main() {
    int arr[5]; // 定义一个长度为5的数组
    int i, j, temp;

    // 读取用户输入的5个数
    printf("请输入5个整数：\n");
    for (i = 0; i < 5; i++) {
        scanf("%d", &arr[i]);
    }

    // 冒泡排序
    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4 - i; j++) {
            if (arr[j] > arr[j + 1]) {
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }

    // 输出排序后的结果
    printf("排序后的结果为：\n");
    for (i = 0; i < 5; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;
}