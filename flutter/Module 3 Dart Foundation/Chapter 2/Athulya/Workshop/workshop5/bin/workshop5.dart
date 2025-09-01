class Honda extends Car{
  void driving(){
    super.driving();
    print("driving car A");
  }
}

class  Car{
   void driving(){
    print('driving car B');
 }
}


void main(){
  Honda carA = new Honda() ;
  carA.driving();
} 