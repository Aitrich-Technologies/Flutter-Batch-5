void main() {
  try {
    throw MyCustomException('This is a coustom exception message');
  } catch (e) {
    print(e);
  }
}class MyCustomException implements Exception {
  final String message;

  MyCustomException(this.message);

  @override
  String toString() {
    return 'MyCustomException: $message';
  }
}