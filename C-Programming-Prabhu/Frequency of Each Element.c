#include <stdio.h>
#include <stdbool.h>

int main() {
    int n;
    scanf("%d", &n);
    int arr[n];

    for(int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    bool counted[n];
    for(int i = 0; i < n; i++) {
        counted[i] = false;
    }

    for(int i = 0; i < n; i++) {
        if(counted[i] == false) {
            int count = 1;
            counted[i] = true;

            for(int j = i + 1; j < n; j++) {
                if(arr[i] == arr[j]) {
                    count++;
                    counted[j] = true;
                }
            }
            printf("%d %d\n", arr[i], count);
        }
    }
    return 0;
}
