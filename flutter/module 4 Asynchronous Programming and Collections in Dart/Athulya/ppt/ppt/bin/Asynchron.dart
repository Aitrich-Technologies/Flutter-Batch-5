// Future<String> fetchData() {
//     return Future.delayed(Duration(seconds: 2), () {
//     return "Got it";
//   });
// }

// void main() {
//   print("Searching.....");
//   fetchData().then((value) {
//     print(value); 
//   }).catchError((error) {
//     print("Error: $error"); 
//   });
// }



// Stream<int> numberStream() async* {
//   for (int i = 1; i <= 5; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     yield i; 
//   }
// }

// void main() async {
//   print("Starting stream...");
//   await for (var number in numberStream()) {
//     print("Received: $number");
//   }
//   print("Stream closed!");
// }


Future<void> fetchData() async {
  print("Fetching data...");
  await Future.delayed(Duration(seconds: 2)); // Simulates delay
  print("Data fetched successfully!");
}

void main() async {
  print("Start");
  await fetchData();
  print("End");
}

