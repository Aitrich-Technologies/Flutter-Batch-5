void main(){
var obj=parentclass();
obj.function();
}
class parentclass extends childclass{
  void function(){
    super.function();
 print('This is from derived class');
  }
}

class childclass 
{void function(){
    print('This is from class child');
}
}