/*
 Indexes of Subarray Sum
 Given an array arr[] containing only non-negative integers, your task is to find a continuous subarray (a contiguous sequence of elements) whose sum equals a specified value target. You need to return the 1-based indices of the leftmost and rightmost elements of this subarray.

 Note: If no such array is possible then, return [-1].
 
 Time Complexity: O(n) — Each element is processed at most twice (once added, once removed).
 Space Complexity: O(1) — No additional space is used.
 */

func subarraySumIndexes(_ arr: [Int], _ target: Int) -> [Int] {
    var left = 0
    var currentSum = 0
    for right in 0..<arr.count {
        // Add the current element to the sum
        currentSum += arr[right]
        // Shrink the window from the left while the sum exceeds the target
        while currentSum > target && left <= right {
            currentSum -= arr[left]
            left += 1
        }
        // If the current sum matches the target, return the 1-based indices
        if currentSum == target {
            return [left + 1, right + 1]
        }
    }
    // If no subarray is found
    return [-1]
}

// Examples
let arr1 = [1, 2, 3, 7, 5]
let target1 = 12
print(subarraySumIndexes(arr1, target1))  // Output: [2, 4]

//let arr2 = [5, 3, 4]
//let target2 = 2
//print(subarraySumIndexes(arr2, target2))  // Output: [-1]
