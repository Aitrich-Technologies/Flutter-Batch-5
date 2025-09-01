void main(List<String> arguments) {
  for (int i=0; i<5; i++){
   var stars=' ';
   for (int j=(5-i); j>1; j--){
    stars += ' ';
   }
   for(int j=0;j<=i;j++){
    stars += ' *';
   }
   print(stars);
  }
}
  