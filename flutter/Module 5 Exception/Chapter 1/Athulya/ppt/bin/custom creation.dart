void main(List<String> arguments) {
 try{
  throwA();
 }
 on A catch(e){
  print(e.Z);
 }
}
void throwA(){
  throw A("exception detected");
}
class A implements Exception{
  String Z;
  A(this.Z);
}