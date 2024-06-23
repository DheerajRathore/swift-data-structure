/*
 Check if an Array is Sorted.
 
 Given an array of size n, write a program to check if the given array is sorted in (ascending / Increasing / Non-decreasing) order or not. If the array is sorted then return True, Else return False.
 
 Time Complexity: O(N)
 Space Complexity: O(1)
 */

func checkIfArrayIsSorted(_ arr: [Int]) -> Bool {
    for i in 1..<arr.count {
        if arr[i] < arr[i-1] {
            return false
        }
    }
    return true
}

//Example
print(checkIfArrayIsSorted([1, 2, 3, 4, 5]))

print(checkIfArrayIsSorted([1, 3, 4, 5, 2]))
