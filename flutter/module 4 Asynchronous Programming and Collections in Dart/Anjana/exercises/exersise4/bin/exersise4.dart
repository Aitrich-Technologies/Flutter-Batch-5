
Future<String> fetch() async{
  await Future.delayed(Duration(seconds: 4),()
  {print("program ends");});
  return "some data from the server";  
}
void main(List<String> arguments) async{
 print('program starts');
 print("fetching...");
 String name = await fetch();
 print("Data received :$name ");
  
}
