void main(List<String> args) {
 Mobile();
}
abstract class Message{
  void text ();
  void number();
}
abstract class Call {
  void call();
  void recievecall();
}
class Mobile implements Message,Call{
  Mobile(){
    print('the mobile must do these functions');
  }
  @override
  void call(){}

  @override
  void number(){}

@override
void recievecall(){}

@override
void text(){}
 
}