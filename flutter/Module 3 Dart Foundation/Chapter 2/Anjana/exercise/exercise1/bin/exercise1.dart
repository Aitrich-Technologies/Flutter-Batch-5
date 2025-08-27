

void main(){
  int num=121;
  int rev=0;
  int value = num;
  while(num>0){
    int a = num % 10;
    rev = rev *10 + a;
    num = num ~/= 10;

  }
  if(rev == value){
    print("it is a palinrome");
  }
  else{
    print('it is not palindrome');
  }
}


