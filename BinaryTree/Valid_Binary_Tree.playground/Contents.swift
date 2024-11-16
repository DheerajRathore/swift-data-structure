/*
 A valid BST is defined as follows:
 The left subtree of a node contains only nodes with keys less than the node's key.
 The right subtree of a node contains only nodes with keys greater than the node's key.
 Both the left and right subtrees must also be binary search trees.
 
 Time Complexity: O(n)
 Space Complexity: O(h)
 h is the height of the tree. This space is used by the recursion stack.
 
 In the worst case (skewed tree),
 h=n.
 
 In the best case (balanced tree),
 h=logn.
 
 */
class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?

    init(_ val: Int, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        return validate(root, nil, nil)
    }

    private func validate(_ node: TreeNode?, _ min: Int?, _ max: Int?) -> Bool {
        // Base case: If the node is nil, it is valid
        guard let node = node else { return true }

        // Check the current node value against the min and max constraints
        if let min = min, node.val <= min {
            return false
        }
        if let max = max, node.val >= max {
            return false
        }

        // Recursively validate left and right subtrees with updated constraints
        return validate(node.left, min, node.val) && validate(node.right, node.val, max)
    }
}

let root = TreeNode(2)
root.left = TreeNode(1)
root.right = TreeNode(3)

let solution = Solution()
print(solution.isValidBST(root)) // Output: true

//let invalidRoot = TreeNode(5)
//invalidRoot.left = TreeNode(1)
//invalidRoot.right = TreeNode(4, TreeNode(3), TreeNode(6))
//
//print(solution.isValidBST(invalidRoot)) // Output: false
