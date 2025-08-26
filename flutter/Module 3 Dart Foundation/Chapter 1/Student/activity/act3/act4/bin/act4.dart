

// first downward


// void main(List<String> arguments) {
// var b = 5;
// int a =1;
// for(int i=b;i>0;i--){
// print(' '*a + '* '*i);
// a=a+1;
// }
// }



// void main() {
//   for (var i = 1; i <= 4; i++) {
//     print(" *" * i);
    
//   }
//   for (var i = 4-1; i >=1; i--) {
//     print(' *'*i);
    
//   }

  
// }


void main() {
  // Upper half
  for (int i = 1; i <= 4; i++) {
    print(' ' * (4 - i) + ' *' * i);
  }
 // Lower half
  for (int i = 4 - 1; i >= 1; i--) {
    print(' ' * (4 - i) + ' *' * i);
  }
}
