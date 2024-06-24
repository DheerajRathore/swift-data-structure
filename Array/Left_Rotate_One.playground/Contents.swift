/*
 Left Rotate the Array by One.
 
 Problem: Given an array of N integers, left rotate the array by one place.
 
 Time Complexity: O(n), as we iterate through the array only once.
 Space Complexity: O(1) as no extra space is used
 
 */

func rotateArrayByOne(_ arr: inout [Int]) {
    
    if arr.count == 1 {
        return
    }
    
    let temp = arr[0]
    for i in 0..<arr.count-1 {
        arr[i] = arr[i+1]
    }
    arr[arr.count - 1] = temp
}

//Example
var arrToRotate = [1, 2, 3, 4, 5]
rotateArrayByOne(&arrToRotate)
