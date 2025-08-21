void main(){
var s=v();
s.name = 'athulya';
print(s.name);
}


class v{
   late String name;

  set (String u){
    this.name = u;
  }

  String get Name{
    return name;
  }
}



