void main(List<String> args) {
  var y = cs();
  y.function();
  var yy = cs.name();
  yy.function();
}

class cs {
  cs() {
   print('This is from default control'); 
  }
  cs.name() {
      print('This is from named constructor');
    }
    void function() {
      print('This is from function');
    }
  }