// ignore_for_file: deprecated_member_use

void main(List<String> args) {
  int x = 10 ;
  int y = 0;

  try {
    int xy = x ~/ y;
    print(xy);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  }
}