

void main(List<String> arguments) {
  int a = 11;
int  count = 0;
  for(int i=1;i<=a;i++){
    if(a % i == 0){
      count ++;
    }
  }
    if(count == 2){
      print("$a is prime number");
    }
    else{
      print("$a is not prime number");
    }
  }

