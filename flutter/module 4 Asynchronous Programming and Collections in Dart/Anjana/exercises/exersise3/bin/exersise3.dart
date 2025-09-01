

void main(List<String> arguments) {
  List<int> number = [1,2,3,4,5,6,7,8,9,10];
  print("list :$number");
  print("sum of elements : ${number.reduce((value, element) => value + element,)}");
}
