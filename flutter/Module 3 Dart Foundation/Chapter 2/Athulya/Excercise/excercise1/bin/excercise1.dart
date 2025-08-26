void main(){
  int num = 545;
  int reversed = 0;
  int value = num;

  while (num>0){
    int remainder = num%10;
    reversed = (reversed * 10)+remainder;
   
  }
  if(value==reversed){
    print('Its a palindrome number');
  }
  else{
    print('its not a palindrome number');
  }
}

