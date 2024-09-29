/*

 Find the duplicate in an array of N+1 integers

 Problem Statement: Given an array of N + 1 size, where each element is between 1 and N. Assuming there is only one duplicate number, your task is to find the duplicate number.
 
    Time Complexity: O(N), as we are traversing through the array only once.
    Space Complexity: O(N), as we are using extra space for frequency array.
 */

func findDuplicate(_ arr: [Int]) -> Int {
    let n = arr.count
    var freq = [Int](repeating: 0, count: n + 1)
    
    for num in arr {
        if freq[num] == 0 {
            freq[num] += 1
        } else {
            return num
        }
    }
    return 0
}

// Main function equivalent
let arr = [1, 3, 4, 2, 3]
let result = findDuplicate(arr)
print("The duplicate element is \(result)")
