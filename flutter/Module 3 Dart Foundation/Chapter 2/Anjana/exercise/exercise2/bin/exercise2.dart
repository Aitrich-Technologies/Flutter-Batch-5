

void main(){
var obj=A();
obj.a();
}
mixin B{
  String b="value of B";
}
mixin C{
  String c="value of C";
}
mixin D{
  String d="value of D";
}
mixin F{
  String f="value of F";
}
class A with B,C,D,F {
   void a(){
    print("value from class B:$b");
     print("value from class C:$c");
      print("value from class D:$d");
       print("value from class F:$f");
     }

  }
  





