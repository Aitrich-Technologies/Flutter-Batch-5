import 'dart:collection';
void main(List<String> arguments) {
  Queue<int>myqueue=Queue();
 myqueue.addAll([10,20,30,40,50]);
 print('Initial Queue:$myqueue');

 print('First element of the Queue:${myqueue.first}');
 print('Last element of the Queue:${myqueue.last}');

 print("Removed element:${myqueue.removeFirst()}");
 print("Removed element:${myqueue.removeFirst()}");
 print("Removed element:${myqueue.removeFirst()}");
 print("Removed element:${myqueue.removeFirst()}");
 print("Removed element:${myqueue.removeFirst()}");

 myqueue.clear();
 print("Queue after removal:$myqueue");
}
