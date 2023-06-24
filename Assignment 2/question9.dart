//Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.


void main(){
List<int> numbers=[22,65,12,89,34,82,45,102,29];
int max=numbers.reduce((value, element) => value>element? value:element);
print("The maximum value is: $max");
}