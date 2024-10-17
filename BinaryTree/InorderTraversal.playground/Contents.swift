import UIKit

/*
 Inorder Traversal of Binary Tree

 Problem Statement: Given the root of a Binary Tree, write a recursive function that returns an array containing the inorder traversal of the tree.
 
 Inorder traversal stands as one of the depth-first traversal techniques for navigating nodes in a binary tree. The method starts by exploring the left subtree recursively in the following order: left child, root node, right child. Initially, it traverses the left subtree until reaching the leftmost node. Upon reaching a null node, signifying the end of a subtree, the recursive process halts.Then we visit the current node that had invoked the inorder on its left child. After visiting the current node we visit the right subtree in the inorder manner as well.
 
 */

// Node class for the binary tree
class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    // Initializer to create a node with a value
    init(_ val: Int) {
        self.data = val
        self.left = nil
        self.right = nil
    }
}

// Function to perform inorder traversal
// of the tree and store values in 'arr'
func inorder(_ root: Node?, _ arr: inout [Int]) {
    // If the current node is nil
    // (base case for recursion), return
    guard let root = root else { return }
    
    // Recursively traverse the left subtree
    inorder(root.left, &arr)
    // Append the current node's value to the array
    arr.append(root.data)
    // Recursively traverse the right subtree
    inorder(root.right, &arr)
}

// Function to initiate inorder traversal
// and return the resulting array
func inOrder(_ root: Node?) -> [Int] {
    // Create an empty array to
    // store inorder traversal values
    var arr: [Int] = []
    // Call the inorder traversal function
    inorder(root, &arr)
    // Return the resulting array
    // containing inorder traversal values
    return arr
}

// Main function equivalent
func CreateBinaryTree() {
    // Creating a sample binary tree
    let root = Node(1)
    root.left = Node(2)
    root.right = Node(3)
    root.left?.left = Node(4)
    root.left?.right = Node(5)

    // Getting inorder traversal
    let result = inOrder(root)

    // Displaying the inorder traversal result
    print("Inorder Traversal:", result.map { String($0) }.joined(separator: " "))
}

// Call the main function
CreateBinaryTree()
