#include <stdio.h>
#include <stdlib.h>

// Comparison function for qsort
int cmpfunc(const void *a, const void *b) {
    return (*(int*)a - *(int*)b);
}

int main() {
    int n;
    scanf("%d", &n);

    int arr[n];
    for(int i=0; i<n; i++)
        scanf("%d", &arr[i]);

    // Sort the array
    qsort(arr, n, sizeof(int), cmpfunc);

    // Collect unique elements in descending order
    int unique[n], u=0;
    for(int i=n-1; i>=0; i--) {
        if(i==n-1 || arr[i]!=arr[i+1]) {
            unique[u++] = arr[i];
        }
    }

    // Check if second largest exists
    if(u >= 2)
        printf("%d\n", unique);
    else
        printf("-1\n");

    return 0;
}
