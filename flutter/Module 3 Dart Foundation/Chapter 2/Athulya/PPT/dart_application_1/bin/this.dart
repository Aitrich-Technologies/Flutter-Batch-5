void main(){
A('field');
}

class A{
  String b='Parameter';
  A(String b){
    print(this.b);
    print(b);
  }
}