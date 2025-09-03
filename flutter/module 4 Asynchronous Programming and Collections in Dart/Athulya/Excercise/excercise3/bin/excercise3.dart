void main(List<String> arguments) {
  List<int>list1=[1,2,3,4,5,6,7,8,9,10];
  print("List=$list1");

print("Sum of elements:${list1.reduce((value, element) => value+element,)}");
}
