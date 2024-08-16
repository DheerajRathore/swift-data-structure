/*
    Delete given node in a Linked List : O(1) approach.
    Problem Statement: Write a function to delete a node in a singly-linked list. You will not be given access to the head of the list instead, you will be given access to the node to be deleted directly. It is guaranteed that the node to be deleted is not a tail node in the list.
 
 Time Complexity: O(1)
 Reason: It is a two-step process that can be obtained in constant time.
 Space Complexity: O(1)
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

func deleteGivenNode(_ node: Node){
    guard let data = node.next?.data else {
        return
    }
    node.data = data
    node.next = node.next?.next
}

