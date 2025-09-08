#include <stdio.h>
#include <math.h>

int main() {

    int n;
    scanf("%d", &n);

    long long sq = (long long)n * n;

    // Find number of digits in n
    int temp = n, digits = 0;
    while (temp > 0) {
        digits++;
        temp /= 10;
    }

    // Extract last 'digits' digits from sq
    long long mod = (long long)pow(10, digits);
    if (sq % mod == n)
        printf("Automorphic\n");
    else
        printf("Not Automorphic\n");

    return 0;
}
