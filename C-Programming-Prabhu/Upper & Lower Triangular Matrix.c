#include <stdio.h>

int main() {
    int n;
    scanf("%d", &n);

    int matrix[n][n];
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++)
            scanf("%d", &matrix[i][j]);

    int isUpper = 1, isLower = 1;

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (i > j && matrix[i][j] != 0) { // below diagonal
                isUpper = 0;
            }
            if (i < j && matrix[i][j] != 0) { // above diagonal
                isLower = 0;
            }
        }
    }

    if (isUpper && isLower)
        printf("Both\n");
    else if (isUpper)
        printf("Upper Triangular\n");
    else if (isLower)
        printf("Lower Triangular\n");
    else
        printf("None\n");

    return 0;
}
