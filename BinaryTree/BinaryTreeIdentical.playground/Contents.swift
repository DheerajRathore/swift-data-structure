/*
 Check if two trees are identical
 
 Problem Statement: Given two Binary Trees, return if true if the two trees are identical, otherwise return false.
 
 Time Complexity: O(N+M) where N is the number of nodes in the first Binary Tree and M is the number of nodes in the second Binary Tree.
 Space Complexity: O(1)
 
 */

import Foundation

// Node structure for the binary tree
class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    // Constructor to initialize the node with a value
    init(_ val: Int) {
        self.data = val
        self.left = nil
        self.right = nil
    }
}

class BinaryTreeIdentical {
    // Function to check if two binary trees are identical
    func isIdentical(_ node1: Node?, _ node2: Node?) -> Bool {
        // If both nodes are nil, they are identical
        if node1 == nil && node2 == nil {
            return true
        }
        
        // If only one of the nodes is nil, they are not identical
        if node1 == nil || node2 == nil {
            return false
        }
        
        // Check if the current nodes have the same data value
        // and recursively check their left and right subtrees
        return (node1!.data == node2!.data) &&
               isIdentical(node1?.left, node2?.left) &&
               isIdentical(node1?.right, node2?.right)
    }
}

// Main function to test the solution
let root1 = Node(1)
root1.left = Node(2)
root1.right = Node(3)
root1.left?.left = Node(4)

let root2 = Node(1)
root2.left = Node(2)
root2.right = Node(3)
root2.left?.left = Node(4)

let binaryTreeIdentical = BinaryTreeIdentical()

if binaryTreeIdentical.isIdentical(root1, root2) {
    print("The binary trees are identical.")
} else {
    print("The binary trees are not identical.")
}

