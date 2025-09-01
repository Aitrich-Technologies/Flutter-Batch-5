void main(List<String> args) {
  var obj = cs2();
  print(obj.cs_String);
  print(obj.str);
  print(obj.str1);
  }

 class cs{
  String str1 = 'This is from class two';
 }

  class cs1 extends cs{
    String str = 'This is from class one';
  }

  class cs2 extends cs1 {
    String cs_String = 'This is from derived class';
  }

 
 
  