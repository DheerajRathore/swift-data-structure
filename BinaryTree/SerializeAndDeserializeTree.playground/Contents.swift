/*
 Serialize And Deserialize a Binary Tree

 Problem Statement: Given a Binary Tree, design an algorithm to serialise and deserialise it. There is no restriction on how the serialisation and deserialization takes place. But it needs to be ensured that the serialised binary tree can be deserialized to the original tree structure.
 
 Complexity Analysis
 Time Complexity: O(N) serialize function: O(N), where N is the number of nodes in the tree.
 Space Complexity: O(N) serialize function: O(N), where N is the maximum number of nodes at any level in the tree.
 */
import Foundation

// Definition for a binary tree node.
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

class SerializeAndDeserializeTree {
    // Encodes the tree into a single string
    func serialize(_ root: TreeNode?) -> String {
        // Check if the tree is empty
        guard let root = root else {
            return ""
        }
        
        // Initialize an empty string to store the serialized data
        var result = ""
        // Use a queue for level-order traversal
        var queue: [TreeNode?] = [root]
        
        // Perform level-order traversal
        while !queue.isEmpty {
            let currentNode = queue.removeFirst()
            
            if let node = currentNode {
                // Append the value of the current node to the string
                result += "\(node.val),"
                // Push the left and right children to the queue for further traversal
                queue.append(node.left)
                queue.append(node.right)
            } else {
                // Append "#" for null nodes
                result += "#,"
            }
        }
        
        return result
    }
    
    // Decodes the encoded data to a tree
    func deserialize(_ data: String) -> TreeNode? {
        // Check if the serialized data is empty
        if data.isEmpty {
            return nil
        }
        
        // Tokenize the serialized data
        let values = data.split(separator: ",").map { String($0) }
        // Read the root value from the serialized data
        guard let rootValue = Int(values[0]) else {
            return nil
        }
        let root = TreeNode(rootValue)
        
        // Use a queue for level-order traversal
        var queue: [TreeNode] = [root]
        var index = 1
        
        // Perform level-order traversal to reconstruct the tree
        while !queue.isEmpty {
            let node = queue.removeFirst()
            
            // Read the value of the left child
            if index < values.count, values[index] != "#" {
                if let leftValue = Int(values[index]) {
                    let leftNode = TreeNode(leftValue)
                    node.left = leftNode
                    queue.append(leftNode)
                }
            }
            index += 1
            
            // Read the value of the right child
            if index < values.count, values[index] != "#" {
                if let rightValue = Int(values[index]) {
                    let rightNode = TreeNode(rightValue)
                    node.right = rightNode
                    queue.append(rightNode)
                }
            }
            index += 1
        }
        
        return root
    }
}

// Helper function for inorder traversal
func inorder(_ root: TreeNode?) {
    guard let root = root else { return }
    inorder(root.left)
    print(root.val, terminator: " ")
    inorder(root.right)
}

// Main function
let root = TreeNode(1)
root.left = TreeNode(2)
root.right = TreeNode(3)
root.right?.left = TreeNode(4)
root.right?.right = TreeNode(5)

let serializeAndDeserializeTree = SerializeAndDeserializeTree()
print("Original Tree: ", terminator: "")
inorder(root)
print()

let serialized = serializeAndDeserializeTree.serialize(root)
print("Serialized: \(serialized)")

if let deserialized = serializeAndDeserializeTree.deserialize(serialized) {
    print("Tree after deserialization: ", terminator: "")
    inorder(deserialized)
    print()
}

