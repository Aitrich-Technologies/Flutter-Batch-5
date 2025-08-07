void main(List<String> args) {
  List items = [];
  for (var i = 0; i <= 3; i++) {
    items.add(i);
  }
  for (var item in items) {
    print(item);
  }
}