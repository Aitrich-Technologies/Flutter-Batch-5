// // ignore_for_file: deprecated_member_use

// void main(List<String> args) {
//   int x = 10 ;
//   int y = 0;

//   try {
//     int xy = x ~/ y;
//     print(xy);
//   } on IntegerDivisionByZeroException catch (e) {
//     print(e);
//   }
// }


void main(){
  int a=5;
  String day="goodday";
  print("enter the number:$a");
  if(a%2==0){
    print("the number $a is even");
  }else{
    print("the number $a is odd");
  }
  switch (day) {
    case "monday":
    break;
    case "tuesday":
    break;
    default:print("invalid day");
  }
  print("fibonacci series upto $a terms");
  int z=0;
  int b =1;
  while (z<= 5) {
    print(z);
    int c=z+b;
    z=b;
    b=c;
    
  }
  int p=5;
  for (var i = p; i >0; i--) {
    print(" "*i+"*");
    p=p+1;

    
  }
    
  }
