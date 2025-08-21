class Car{
  void driving(){
    print("driving car A");
  }
}

class Honda extends Car{

  @override 
 void driving(){
   
   super.driving();
 }
}

void main(){
  Honda carA = new Honda() ;
  carA.driving();
} 