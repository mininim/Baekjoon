#include <stdio.h>

int main() {
	int A=1, B=1;
	for(;;) {
		scanf("%d %d", &A, &B);
		if (A == 0 && B == 0) break;
		printf("%d\n", A + B);
	}return 0;
}