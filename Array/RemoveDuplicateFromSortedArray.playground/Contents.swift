/*
 Remove Duplicates in-place from Sorted Array.
 
 Problem Statement: Given an integer array sorted in non-decreasing order, remove the duplicates in place such that each unique element appears only once. The relative order of the elements should be kept the same. If there are k elements after removing the duplicates, then the first k elements of the array should hold the final result. It does not matter what you leave beyond the first k elements.

 Time Complexity: O(N)
 Space Complexity: O(1)
 
 */

func removeDuplicateFromSortedArray(_ arr: inout [Int]) -> Int {
    
    var i = 0
    for j in 1..<arr.count {
        if arr[i] != arr[j] {
            i = i + 1
            arr[i] = arr[j]
        }
    }
    return i + 1
}

var duplicateArray =  [1, 1, 2, 2, 2, 3, 3]
let index = removeDuplicateFromSortedArray(&duplicateArray)

print(duplicateArray)
for i in 0..<index {
    print(duplicateArray[i])
}

