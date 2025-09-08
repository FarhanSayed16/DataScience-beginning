#include <stdio.h>

int sum_of_digits(int n) {
    if (n < 10) {
        return n;
    } else {
        int sum = 0;
        while (n > 0) {
            sum += n % 10;
            n /= 10;
        }
        return sum_of_digits(sum);
    }
}

int main() {
    int n;
    scanf("%d", &n);
    printf("%d\n", sum_of_digits(n));
    return 0;
}
