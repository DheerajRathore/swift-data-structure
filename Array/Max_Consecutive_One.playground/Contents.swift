/*
 Count Maximum Consecutive One's in the array.

 Problem Statement: Given an array that contains only 1 and 0 return the count of maximum consecutive ones in the array.

 Time Complexity: O(N) since the solution involves only a single pass.
 Space Complexity: O(1) because no extra space is used.
 */

func countMaxConsecutiveOne(_ arr: [Int]) -> Int{
    
    var currentCount = 0
    var maxCount  = 0
    
    for num in  arr {
        if num == 1 {
            currentCount = currentCount + 1
        } else {
            currentCount = 0
        }
        
        maxCount = max(currentCount, maxCount)
    }
    
    return maxCount
}

print(countMaxConsecutiveOne([1, 1, 0, 1, 1, 1]))
