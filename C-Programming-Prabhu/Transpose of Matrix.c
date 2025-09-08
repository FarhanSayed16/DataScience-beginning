#include <stdio.h>

int main() {
    int m, n;
    scanf("%d %d", &m, &n);

    int A[m][n];

    for (int i = 0; i < m; i++)
        for (int j = 0; j < n; j++)
            scanf("%d", &A[i][j]);

    // Print transpose
    for (int j = 0; j < n; j++) {
        for (int i = 0; i < m; i++) {
            printf("%d", A[i][j]);
            if (i < m - 1)
                printf(" ");
        }
        printf("\n");
    }
    return 0;
}
