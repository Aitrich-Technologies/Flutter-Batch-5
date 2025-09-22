void main(){
  print("Know exception");
  try{
    var a = 10~/0;
    print("cant do $a");
  }
  on IntegerDivisionByZeroException{
    print("error");
  }
}