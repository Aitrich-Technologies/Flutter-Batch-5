
void main(List<String> arguments) {
  
  for(var i=1;i<=5;i++){
    String a = '  ';
    for(var j = 1;j<=i; j++){
      a+=' $j ';
    }
    print(a);
  }
}
