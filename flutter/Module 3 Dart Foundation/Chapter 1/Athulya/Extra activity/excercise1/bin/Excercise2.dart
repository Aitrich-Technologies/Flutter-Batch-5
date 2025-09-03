void main() {
  int rows = 5;

  // Upper half
  for (int i = 1; i <= rows; i++) {
    print('* ' * i);
  }

  // Lower half
  for (int i = rows - 1; i >= 1; i--) {
    print('* ' * i);
  }
}

