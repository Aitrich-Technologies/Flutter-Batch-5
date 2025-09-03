void main() {
  var grade = 'C';

  switch (grade) {
    case 'A':
      print('Excellent!');
      break;
    case 'B':
      print('Good!');
      break;
    case 'D':
      print('Poor!');
      break;
    case 'C':
      print("Fair!");
      break;  
    case 'E':
      print('Fail!');
      break;  
    default:
      print('Invalid grade');
  }
}
