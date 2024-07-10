/*
 Longest Consecutive Sequence in an Array
 Problem Statement: You are given an array of ‘N’ integers. You need to find the length of the longest sequence which contains the consecutive elements.
 
 Time Complexity: O(NlogN) + O(N), N = size of the given array.
 Reason: O(NlogN) for sorting the array.
 
 */


func longestConsecutiveSequence(_ arr: inout [Int]) -> Int {
    
    var lastSmaller = Int.min
    var cnt = 0
    var longest = 1
    arr.sort()
    
    for i in 0..<arr.count {
        if (arr[i] - 1 == lastSmaller) {
            //a[i] is the next element of the
            //current sequence.
            cnt = cnt + 1;
            lastSmaller = arr[i]
        }
        else if (arr[i] != lastSmaller) {
            cnt = 1
            lastSmaller = arr[i]
        }
        longest = max(longest, cnt);
        
    }
    return longest
}

var array = [100, 200, 1, 3, 2, 4]
longestConsecutiveSequence(&array)
array
