/*
 Sort an array of 0s, 1s and 2s

Problem Statement: Given an array consisting of only 0s, 1s, and 2s. Write a program to in-place sort the array without using inbuilt sort functions.
 
 Time Complexity: O(N) + O(N), where N = size of the array. First O(N) for counting the number of 0’s, 1’s, 2’s, and second O(N) for placing them correctly in the original array.
 Space Complexity: O(1)
 */

func sortArrayOF_012(_ arr: inout [Int]){
    
    var cnt0 = 0, cnt1 = 0, cnt2 = 0

    for i in 0..<arr.count {
        if (arr[i] == 0){ cnt0 = cnt0 + 1}
        else if (arr[i] == 1) { cnt1 = cnt1 + 1 }
        else { cnt2 = cnt2 + 1 }
        }

        //Replace the places in the original array:
    // replacing 0's
    for i in 0..<cnt0 { arr[i] = 0}
    
    for i in cnt0..<cnt0 + cnt1 { arr[i] = 1} // replacing 1's
    
    for i in cnt0 + cnt1..<arr.count { arr[i] = 2} // replacing 2's
}

var arrayOf012 = [0, 2, 1, 2, 0, 1]
sortArrayOF_012(&arrayOf012)
