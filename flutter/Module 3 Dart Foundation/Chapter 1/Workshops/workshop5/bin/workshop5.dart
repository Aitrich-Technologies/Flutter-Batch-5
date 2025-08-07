void main() {
  var grade = 'A';

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
    case 'E':
      print('Fail!');
      break;
    default:
      print('Invalid grade');
  }
}
