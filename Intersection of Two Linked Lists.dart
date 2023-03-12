// //QA(226)
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class A {
  ListNode? getIntersectionNode(ListNode? headA, headB) {
    ListNode? currentA = headA, currentB = headB;

    while (currentA != currentB) {
      if (currentA != null)
        currentA = currentA.next;
      else
        currentA = headB;
      if (currentB != null)
        currentB = currentB.next;
      else
        currentB = headA;
    }
    return currentA;
  }
}