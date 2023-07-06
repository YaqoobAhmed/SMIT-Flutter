//Implement a code that checks whether a given number is prime or not.

void main() {
  int checkNum = 17; // Enter the number you want to check

  if (checkNum <= 1) {
    print("$checkNum is not a prime number.");
  } else {
    bool isPrime = true;

    for (int i = 2; i <= checkNum ~/ 2; i++) {
      if (checkNum % i == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime==true) {
      print("$checkNum is a prime number.");
    } else {
      print("$checkNum is not a prime number.");
    }
  }
}
