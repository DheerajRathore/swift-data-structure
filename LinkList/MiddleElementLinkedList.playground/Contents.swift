/*
 Find middle element in a Linked List

 Problem Statement: Given the head of a linked list of integers, determine the middle node of the linked list. However, if the linked list has an even number of nodes, return the second middle node.
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

func middleElementOFList(_ head: Node) -> Node {
    
    var slow = head
    var fast = head
    
    while fast != nil && fast.next != nil {
        guard let slow = slow.next else {
            return slow
        }
        guard let fast = fast.next?.next else {
            return slow
        }
    }
    
    return slow
}
