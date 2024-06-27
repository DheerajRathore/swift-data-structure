/*
 Moves Zeros to End.
 Problem Statement: You are given an array of integers, your task is to move all the zeros in the array to the end of the array and move non-negative integers to the front by maintaining their order.
 
 Time Complexity: O(n)
 Space Complexity: O(1)
 
 */

func moveZerosToEnd(_ arr: inout [Int]){
    
    var j = -1
    //place the pointer j:
    for i in 0..<arr.count {
        if (arr[i] == 0) {
            j = i
            break
        }
    }
    
    //no non-zero elements:
    if (j == -1) { return }
    
    //Move the pointers i and j
    //and swap accordingly:
    for i  in j + 1..<arr.count {
        if (arr[i] != 0) {
            arr.swapAt(i, j)
            j = j + 1
        }
    }
}

var zeroToEnd = [1, 0, 2, 3, 2, 0, 0, 4, 5, 1]
moveZerosToEnd(&zeroToEnd)
