void main(){
  var _=Constructor();
var b=Constructor.Named();
b.function();
}

class Constructor {
  Constructor(){
    print("Default constructor");
  }

Constructor.Named(){
  print('Named constructor');
}

void function(){
  print('Function');
}
}