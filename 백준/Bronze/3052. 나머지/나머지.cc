#include <stdio.h>

int main(void) {

  int r[42] = {0,};
  int input;
  int max = 0;
  int result = 0;

  for (int i = 0; i < 10; i++) {
    scanf("%d", &input);
    r[input % 42]++;
  }

  for (int i = 0; i <= 41; i++) {
    if (r[i]) {
      result++;
    }
  }

  printf("%d", result);
  return 0;
}