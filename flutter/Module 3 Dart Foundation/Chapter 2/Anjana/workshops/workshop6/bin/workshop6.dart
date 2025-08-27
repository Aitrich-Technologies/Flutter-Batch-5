void main(List<String> args) {
  var obj = cs();
  print(obj.cs_String);
  print(obj.str);
  print(obj.str1);
  }


  class cs extends cs1 {
    String cs_String = 'This is from derived class';
  }

  class cs1 extends cs2 {
    String str = 'This is from class one';
  }

 class cs2{
  String str1 = 'This is from class two';
 }
  