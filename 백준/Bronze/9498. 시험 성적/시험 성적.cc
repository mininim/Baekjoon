#include <stdio.h>

int main(void) {

  int x;
  scanf("%d", &x);
    
  if (x >= 90 && x <= 100) {
    printf("A");
  } else if (x >= 80) {
    printf("B");
  } else if (x >= 70) {
    printf("C");
  } else if (x >= 60) {
    printf("D");
  } else {
    printf("F");
  }

  return 0;
}