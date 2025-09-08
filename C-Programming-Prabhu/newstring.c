#include <stdio.h>

int main() {
    int m, n;
    scanf("%d %d", &m, &n);

    int matrix[m][n];
    for (int i = 0; i < m; i++)
        for (int j = 0; j < n; j++)
            scanf("%d", &matrix[i][j]);

    // Calculate and print sum of each row
    for (int i = 0; i < m; i++) {
        int row_sum = 0;
        for (int j = 0; j < n; j++)
            row_sum += matrix[i][j];
        printf("%d\n", row_sum);
    }

    // Calculate and print sum of each column
    for (int j = 0; j < n; j++) {
        int col_sum = 0;
        for (int i = 0; i < m; i++)
            col_sum += matrix[i][j];
        printf("%d\n", col_sum);
    }

    return 0;
}
