/*
 Check for Symmetrical Binary Tree
 Problem Statement: Given a Binary Tree, determine whether the given tree is symmetric or not. A Binary Tree would be Symmetric, when its mirror image is exactly the same as the original tree. If we were to draw a vertical line through the centre of the tree, the nodes on the left and right side would be mirror images of each other.

 Time Complexity: O(N) where N is the number of nodes in the Binary Tree.

 Space Complexity: O(1) as no additional data structures or memory is allocated.
 
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

class CheckSymmetricBinaryTree {
    // Private utility function to check if two subtrees are symmetric
    private func isSymmetricUtil(_ root1: Node?, _ root2: Node?) -> Bool {
        // Check if either subtree is nil
        if root1 == nil || root2 == nil {
            // If one subtree is nil, the other must also be nil for symmetry
            return root1 === root2
        }
        
        // Check if the data in the current nodes is equal
        // and recursively check for symmetry in subtrees
        return (root1!.data == root2!.data) &&
               isSymmetricUtil(root1?.left, root2?.right) &&
               isSymmetricUtil(root1?.right, root2?.left)
    }
    
    // Public function to check if the entire binary tree is symmetric
    func isSymmetric(_ root: Node?) -> Bool {
        // Check if the tree is empty
        if root == nil {
            // An empty tree is considered symmetric
            return true
        }
        // Call the utility function to check symmetry of subtrees
        return isSymmetricUtil(root?.left, root?.right)
    }
}

// Function to print the Inorder traversal of the Binary Tree
func printInorder(_ root: Node?) {
    guard let root = root else {
        return
    }
    printInorder(root.left)
    print("\(root.data) ", terminator: "")
    printInorder(root.right)
}

// Main function to test the solution
let root = Node(1)
root.left = Node(2)
root.right = Node(2)
root.left?.left = Node(3)
root.right?.right = Node(3)
root.left?.right = Node(4)
root.right?.left = Node(4)

let checkSymmetricBinaryTree = CheckSymmetricBinaryTree()

print("Binary Tree (Inorder): ", terminator: "")
printInorder(root)
print("")

if checkSymmetricBinaryTree.isSymmetric(root) {
    print("This Tree is Symmetrical")
} else {
    print("This Tree is NOT Symmetrical")
}
