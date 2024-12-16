/*
 Maximum Sum Path in Binary Tree
 Problem Statement: Given a Binary Tree, determine the maximum sum achievable along any path within the tree. A path in a binary tree is defined as a sequence of nodes where each pair of adjacent nodes is connected by an edge. Nodes can only appear once in the sequence, and the path is not required to start from the root. Identify and compute the maximum sum possible along any path within the given binary tree.
 
 Time Complexity: O(N).

 Space Complexity: O(1)
 
 */
import Foundation

// Node structure for the binary tree
class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(_ val: Int) {
        self.data = val
        self.left = nil
        self.right = nil
    }
}

class MaximumSumPathInBinaryTree {
    // Recursive function to find the maximum path sum for a subtree rooted at 'root'
    func findMaxPathSum(_ root: Node?, _ maxi: inout Int) -> Int {
        // Base case: If the current node is nil, return 0
        guard let root = root else {
            return 0
        }

        // Calculate the maximum path sum for the left and right subtrees
        let leftMaxPath = max(0, findMaxPathSum(root.left, &maxi))
        let rightMaxPath = max(0, findMaxPathSum(root.right, &maxi))

        // Update the overall maximum path sum including the current node
        maxi = max(maxi, leftMaxPath + rightMaxPath + root.data)

        // Return the maximum sum considering only one branch (left or right) with the current node
        return max(leftMaxPath, rightMaxPath) + root.data
    }

    // Function to find the maximum path sum for the entire binary tree
    func maxPathSum(_ root: Node?) -> Int {
        // Initialize the maxi variable to the smallest possible integer value
        var maxi = Int.min
        _ = findMaxPathSum(root, &maxi) // Start the recursive calculation
        return maxi
    }
}

// Main function to test the solution
func main() {
    // Creating a sample binary tree
    let root = Node(1)
    root.left = Node(2)
    root.right = Node(3)
    root.left?.left = Node(4)
    root.left?.right = Node(5)
    root.left?.right?.right = Node(6)
    root.left?.right?.right?.right = Node(7)

    // Creating an instance of the Solution class
    let maximumSumPathInBinaryTree = MaximumSumPathInBinaryTree()

    // Finding and printing the maximum path sum
    let maxPathSum = maximumSumPathInBinaryTree.maxPathSum(root)
    print("Maximum Path Sum: \(maxPathSum)")
}

// Run the main function
main()

