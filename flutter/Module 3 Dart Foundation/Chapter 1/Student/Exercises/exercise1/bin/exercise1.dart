
void main(List<String> arguments) {
for (var i = 0; i < 5; i++) {
  var a = ' ';
  for(var j = (5-i);j > 1;j--){
    a += ' ';
  }
  for (var j = 0; j <=i; j++) {
    a += ' *';
    
  }
  print(a);
}

}
