/*
 Kth largest/smallest element in Binary Search Tree.
 Problem Statement: Given a Binary Search Tree and an integer ‘K’. Find and return the ‘K-th’ smallest and ‘K-th’ largest element in the given Binary Search Tree.
 
 Time Complexity: O(N).
 Space Complexity : O(1).
 
 */

import Foundation

// Definition of TreeNode structure for a binary tree node
class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class KTHLargestSmallest {
    // Helper function to perform reverse inorder traversal to find Kth largest element
    private func reverseInorder(_ node: TreeNode?, _ counter: inout Int, _ k: Int, _ kLargest: inout Int) {
        guard let node = node, counter < k else { return }
        
        // Traverse right subtree
        reverseInorder(node.right, &counter, k, &kLargest)
        
        // Increment counter
        counter += 1
        
        // Check if current node is the Kth largest
        if counter == k {
            kLargest = node.val
            return
        }
        
        // Traverse left subtree
        reverseInorder(node.left, &counter, k, &kLargest)
    }
    
    // Helper function to perform inorder traversal to find Kth smallest element
    private func inorder(_ node: TreeNode?, _ counter: inout Int, _ k: Int, _ kSmallest: inout Int) {
        guard let node = node, counter < k else { return }
        
        // Traverse left subtree
        inorder(node.left, &counter, k, &kSmallest)
        
        // Increment counter
        counter += 1
        
        // Check if current node is the Kth smallest
        if counter == k {
            kSmallest = node.val
            return
        }
        
        // Traverse right subtree
        inorder(node.right, &counter, k, &kSmallest)
    }
    
    // Public function to find the Kth smallest and largest elements
    func findKth(_ root: TreeNode?, _ k: Int) -> (Int, Int) {
        var kSmallest = Int.min
        var kLargest = Int.min
        var counter = 0
        
        // Find Kth smallest element
        inorder(root, &counter, k, &kSmallest)
        
        // Reset counter for Kth largest element
        counter = 0
        // Find Kth largest element
        reverseInorder(root, &counter, k, &kLargest)
        
        return (kSmallest, kLargest)
    }
}

// Function to perform an in-order traversal of a binary tree and print its nodes
func printInOrder(_ root: TreeNode?) {
    guard let root = root else { return }
    
    printInOrder(root.left)
    print("\(root.val) ", terminator: "")
    printInOrder(root.right)
}

// Main program
let root = TreeNode(10)
root.left = TreeNode(5)
root.right = TreeNode(13)
root.left?.left = TreeNode(3)
root.left?.left?.left = TreeNode(2)
root.left?.left?.right = TreeNode(4)
root.left?.right = TreeNode(6)
root.left?.right?.right = TreeNode(9)
root.right?.left = TreeNode(11)
root.right?.right = TreeNode(14)

print("Binary Search Tree:")
printInOrder(root)
print()

let kthLargestSmallest = KTHLargestSmallest()
let k = 3
print("k: \(k)")

let kthElements = kthLargestSmallest.findKth(root, k)
print("Kth smallest element: \(kthElements.0)")
print("Kth largest element: \(kthElements.1)")
