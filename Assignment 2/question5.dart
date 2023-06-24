//Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

void main(){
Map data={"name":"Yaqoob","phone":03060896279};

List keysWithLength4 = data.keys.where((keys) => keys.length==4).toList();
print("Keys With Length 4 : $keysWithLength4");

}