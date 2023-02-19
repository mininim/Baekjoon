#include <stdio.h>

int main() {
	int A, B, C, D;
	int hour = 0, min = 0, sec = 0;

	scanf("%d %d %d", &A, &B, &C);
	scanf("%d", &D);

	hour = D / 3600;
	min = (D % 3600) / 60;
	sec = (D % 3600) % 60;

	C += sec;
	if (C > 59)
	{
		C -= 60;
		B += 1;
	}
	B += min;
	if (B > 59)
	{
		B -= 60;
		A += 1;
	}
	A += hour;
	if (A > 23)
	{
		A %= 24;
	}

	printf("%d %d %d", A, B, C);
	
	return 0;
}
