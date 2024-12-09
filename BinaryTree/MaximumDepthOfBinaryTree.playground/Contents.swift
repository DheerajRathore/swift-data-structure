/*
 Maximum depth of a Binary Tree

 Problem Statement: Given the root of a Binary Tree, return the height of the tree. The height of the tree is equal to the number of nodes on the longest path from root to a leaf.
 
 Time Complexity: O(N) where N is the number of nodes in the Binary Tree.

 Space Complexity: O(N) where N is the number of nodes in the Binary Tree because in the worst case scenario the tree is balanced and has N/2 nodes in its last level which will have to be stored in the queue.
 
 
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

class Solution {
    // Function to find the maximum depth of a binary tree
    func maxDepth(_ root: Node?) -> Int {
        // If the root is nil (empty tree), depth is 0
        guard let root = root else {
            return 0
        }
        
        // Recursive call to find the maximum depth of the left subtree
        let leftDepth = maxDepth(root.left)
        
        // Recursive call to find the maximum depth of the right subtree
        let rightDepth = maxDepth(root.right)
        
        // Return the maximum depth of the tree, adding 1 for the current node
        return 1 + max(leftDepth, rightDepth)
    }
}

// Main function to test the solution
let root = Node(1)
root.left = Node(2)
root.right = Node(3)
root.left?.left = Node(4)
root.left?.right = Node(5)
root.left?.right?.right = Node(6)
root.left?.right?.right?.right = Node(7)

let solution = Solution()
let depth = solution.maxDepth(root)

print("Maximum depth of the binary tree: \(depth)")

