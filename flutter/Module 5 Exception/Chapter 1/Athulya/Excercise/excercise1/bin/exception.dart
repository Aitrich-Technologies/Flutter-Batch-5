void main(){
try{
  int a=10~/0;
  print("The result is $a");
}catch(e){
  print("Exception $e");
}finally{
  print("This is final");
}
}