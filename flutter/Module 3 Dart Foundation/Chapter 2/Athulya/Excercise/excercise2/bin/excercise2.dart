void main(){
var obj=A();
obj.printvalue();
}
class A with B, C ,D ,F{
void 
  printvalue(){
    print("value from class B:$b");
    print("value from class C:$c");
    print("value from class D:$d");
    print("value from class E:$f");
  }}
mixin B{
String b='value from B';
  }

mixin C{
  String c='value from c';
  }
mixin D{
  String d='value from d';
  }
mixin F{
  String f='value from f';
  }
