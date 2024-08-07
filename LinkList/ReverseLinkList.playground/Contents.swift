/*
 Reverse a Linked List
 Problem Statement: Problem Statement: Given the head of a singly linked list, write a program to reverse the linked list, and return the head pointer to the reversed list.

 Time Complexity: O(N)
 Space Complexity: O(1) The code uses only a constant amount of additional space, regardless of the linked list's length.
 */


public class Node {
    var data: Int
    var next: Node?
    var prev: Node?
    
    public init(_ val: Int) {
        self.data = val
        self.next = nil
        
    }
}

func reverse(_ node: Node?) -> Node? {
    var prev: Node? = nil
    var current = node
    var next: Node?
    
    while current != nil {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    
    return prev
}


