/*
 Next Greater Element Using Stack
 Problem Statement: Given a circular integer array A, return the next greater element for every element in A. The next greater element for an element x is the first element greater than x that we come across while traversing the array in a clockwise manner. If it doesn't exist, return -1 for this element.
 
 Time Complexity: O(2N)
 Space Complexity: O(2N)
 
 */

func nextGreaterElements(_ nums: [Int]) -> [Int] {
    let n = nums.count
    var nge = Array(repeating: -1, count: n)
    var stack = [Int]()
    
    for i in stride(from:  n - 1, through: 0, by: -1) {
        while !stack.isEmpty && stack.last! <= nums[i % n] {
            stack.removeLast()
        }
        
        if i < n {
            if !stack.isEmpty {
                nge[i] = stack.last!
            }
        }
        stack.append(nums[i % n])
    }
    
    return nge
}

// Main function equivalent
let nums = [5, 7, 1, 2, 6, 0]
let result = nextGreaterElements(nums)

print("The next greater elements are:")
for element in result {
    print(element, terminator: " ")
}
print()
