void main(){
 var obj=child();
 obj.b();
}

class child extends parentclass{
  void a(){
    
   print('This is parent class');
  }
}

class parentclass{
  void b(){
    super.b();
   print('This is childclass');
  }
}