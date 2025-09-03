// void main() {
//   int rows = 5;
//   // Upper half
//   for (int i = 1; i <= rows; i++) {
//     print(" "  * (rows - i) + " *"  * i);
//   }

//   // Lower half
//   for (int i = rows - 1; i >= 1; i--) {
//     print(" "  * (rows - i) + " *"  * i);
//   }
// }

void main() {
  int n = 5; // Number of rows for the upper half (and overall height)

  // Upper half of the triangle
  for (int i = 1; i <= n; i++) {
    String row = '';
    // Print leading spaces
    for (int j = 0; j < n - i; j++) {
      row += ' ';
    }
    // Print stars with a single space between them
    for (int k = 1; k <= i; k++) {
      row += '* '; // Add a star and a space
    }
    print(row.trimRight()); // Remove trailing space
  }

  // Lower half of the triangle (excluding the middle row if n is odd)
  for (int i = n - 1; i >= 1; i--) {
    String row = '';
    // Print leading spaces
    for (int j = 0; j < n - i; j++) {
      row += ' ';
    }
    // Print stars with a single space between them
    for (int k = 1; k <= i; k++) {
      row += '* '; // Add a star and a space
    }
    print(row.trimRight()); // Remove trailing space
  }
}










