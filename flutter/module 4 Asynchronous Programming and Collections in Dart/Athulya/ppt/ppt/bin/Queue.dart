// import 'dart:collection';

// void main(){
//   final queue = Queue<int>();
//   print(queue.runtimeType);

// queue.addAll([4,5,6,7]);
// queue.addFirst(3);
// queue.addLast(8);
// print(queue);

// queue.removeFirst();
// queue.removeLast();
// print(queue);



// }

import 'dart:async';

// A function that creates a Stream using a StreamController.
// It adds numbers from 1 to 3 to the Stream every second.
Stream<int> createNumberStream() {
  final controller = StreamController<int>();

  Timer.periodic(Duration(seconds: 1), (timer) {
    int number = timer.tick; // 1, 2, 3...
    print("Adding $number to stream");
    controller.add(number);

    if (number == 3) {
      print("Closing stream");
      controller.close();
      timer.cancel();
    }
  });

  return controller.stream;
}

void main() {
  print("Starting to listen to the stream...");

  // Listen to the Stream using the listen() method.
  createNumberStream().listen(
    (int data) {
      // This block runs when data is received from the Stream.
      print("Received: $data");
    },
    onDone: () {
      // This block runs when the Stream is closed.
      print("Stream is closed!");
    },
    onError: (Object error) {
      // This block runs if an error occurs in the Stream.
      print("An error occurred: $error");
    },
    cancelOnError: true,
  );
}