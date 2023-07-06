//Write a program that takes a list of numbers as input and prints the even numbers in the list using a for loop.
void main() {
  List numbers = [2, 45, 32, 67, 1, 31, 0, 97, 102, 12, 74];
  List even = [];
  for (int n = 0; n < numbers.length; n++) {
    if (numbers[n] % 2 == 0) {
      even.add(numbers[n]);
    }
  }
  print(even);
}
