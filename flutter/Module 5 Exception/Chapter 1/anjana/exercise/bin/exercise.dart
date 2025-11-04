// void main(List<String>arguments){
//   var x="6";
//   int y=3;
//   try{
//     int x1=int.parse(x);
//     int z=x1~/y;
//     print(z);
//     if(z<5)
//     {throw greaterthanExecption("less than 5");
//     }else
//     { print("greater than 5");
//     }
//   }on FormatException{
//     print("format incorrect");
//   }on IntegerDivisionByZeroException{
//     print("integer division zero number");
//   }on greaterthanExecption catch(e){
//     print(e.error);
//   }catch(e){print("unexpected error");}
// }
// class greaterthanExecption implements Exception{
//   String error;
//   greaterthanExecption(this.error);
// }











// void main(List<String>arguments){
//   String a="30";
//   int b=5;
//   int a1=int.parse(a);
//   try{
//     int c=a1~/b;
//     print("result:$c");
//     if(c>5 && c%2!=0)
//     {
//       throw CustomException("it is odd number and it is greater than 5");}else{
//       print("it is less than 5 and it is even number");
//     }

//   }on CustomException catch(e){print(e.custom);
    
//   }on FormatException{
//     print("format is incorrect");
//   }

// }
// class  CustomException implements Exception{
//   String custom;
//   CustomException(this.custom);
// }


class CustomException implements Exception{
  String error;
  CustomException(this.error);
}
void throwerror(){
    throw CustomException("this is a custom exception");
}
void main(List<String>arguments){

    try{
        print("Before the error");
        throwerror();
    }on CustomException catch(e){
        print("caught an exception:${e.error}");
    }catch (e){
        print("there is a problem is $e");
    
    }finally{
        print("finally block always executed");
    }
}







