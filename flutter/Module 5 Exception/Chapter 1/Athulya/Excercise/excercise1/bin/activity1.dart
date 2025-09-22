void main(){
  var x="488";
  var y=8;
 try{
 var x1=int.parse(x);
var  xy=x1/y;
 var xy2 = xy.toInt();
print("Result is:$xy2");
if(xy>5) {
  print("value is greater than five");
} else{print("value is less than five");}
if(xy%2!=0) {
  print("61 is an odd number");
} else{print("61 is an even number");}
}on customException catch(e){
  print(e.cause);
}
}
class customException implements Exception{
  String cause;
  customException(this.cause);
}