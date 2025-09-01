Future<String>fetchName()async{
  await Future.delayed(Duration(seconds: 3),
  (){print("Program ended");});
  return "Some data from the server";
}

void main()async{
  print("Program started");
  print("Fetching data...");
  String name = await fetchName();
  print("Data received:$name");
}