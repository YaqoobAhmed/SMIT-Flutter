//Write a program that prints the Fibonacci sequence up to a given number using a for loop.
void main() {
  int limit = 10;
  int a = 0;
  int b = 1;

  print('Fibonacci sequence up to $limit');
  print(a);
  print(b);
  for (int i = 2; i <= limit; i++) {
    int c = a + b;
    print(c);
    a = b;
    b = c;
  }
}
