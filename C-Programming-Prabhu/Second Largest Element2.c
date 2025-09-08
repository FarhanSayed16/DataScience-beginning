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
    for(int i = 0; i < n; i++)
        scanf("%d", &arr[i]);

    // Sort the array
    qsort(arr, n, sizeof(int), cmpfunc);

    // Collect unique elements in ascending order
    int unique[n], u = 0;
    for(int i = 0; i < n; i++) {
        // Only add if this is the first occurrence
        if(i == 0 || arr[i] != arr[i - 1]) {
            unique[u++] = arr[i];
        }
    }

    // Check if second largest exists
    if(u >= 2)
        printf("%d\n", unique[u - 2]); // Second largest is second to last in ascending order
    else
        printf("-1\n");

    return 0;
}
