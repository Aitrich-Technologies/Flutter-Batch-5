void main(){
  try{
    print("Before the error");
  // throwerror();
  }on customException catch(e){
    print("caught an exception:${e.error}");
  }catch(e){
    print("any problem detected");
  }finally{
    print("Finally block always executed");
  }
}
void throwerror(){
  throw customException("This is a custom ecxception");
}
class customException implements Exception{
  String error;
 customException(this.error) ;
}