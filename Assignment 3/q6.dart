// Implement a code that finds the largest element in a list using a for loop.
// Example:
// Input: [3, 9, 1, 6, 4, 2, 8, 5, 7]
// Output: Largest element: 9
void main() {
  List elements = [3, 9, 1, 6, 4, 2, 18, 5, 7];
  int largestElemnt = elements.elementAt(0);

  for (var element in elements) {
    if (largestElemnt < element) {
      largestElemnt = element;
    }
  }
  print("The largest element is: $largestElemnt");
}
