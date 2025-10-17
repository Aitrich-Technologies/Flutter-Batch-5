void main(){
  var x='6';
  int y=3;
  try{
    var x1=int.parse(x);
    var xy=x1~/y;
    print(xy);
    if(xy<5){throw v("Answer is less than 5");}else{print("Answer is Greater than 5");}
  }on FormatException{
    print("format incorrect");
  }on IntegerDivisionByZeroException{
    print("Integer Division Zero Number");
  }on v catch(e){
    print(e.error);
  }
  catch(e){
    print("Unexcpected error");
  }
  }
   class v implements Exception{
    String error;
    v(this.error);
  }