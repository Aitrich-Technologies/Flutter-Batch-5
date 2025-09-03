class Car extends Honda{
  void driving(){
    super.driving();
    print("driving car A");
  }
}

class Honda {

 void driving(){
 print("driving car B");
 }
}

void main(){
  Honda carA = Car() ;
  carA.driving();
} 