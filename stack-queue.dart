//Qa(225)
import 'dart:collection';

class MyStack {
  Queue<int> queue = Queue();

  MyStack() {
    this.queue;
  }

  void push(int x) {
    queue.add(x);
    for (int i = 0; i < queue.length - 1; i++) {
      queue.add(queue.removeFirst());
    }
  }

  int pop() {
    return queue.removeFirst();
  }

  int top() {
    return queue.first;
  }

  bool empty() {
    return queue.isEmpty;
  }
}
