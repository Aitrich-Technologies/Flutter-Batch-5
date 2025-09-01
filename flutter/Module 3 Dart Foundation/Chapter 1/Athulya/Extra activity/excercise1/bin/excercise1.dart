
void main() {
  int rows = 5;

  for (int i = 0; i < rows; i++) {
     String spaces = ' ' * (i + 1);
     String stars = '* ' * (rows - i);
    print(spaces + stars);
  }
}
  