void main(){
var obj=name();
print('call------${obj.str}');
obj.print_str();
}

class name{
  String str='Athulya';
  void print_str(){
    print('Execute----- $str');
      }
}