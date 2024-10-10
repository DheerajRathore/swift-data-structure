/*
    Remove Duplicate from array 2
 
 Given an integer array nums sorted in non-decreasing order, remove some duplicates in-place such that each unique element appears at most twice. The relative order of the elements should be kept the same.
 Input: nums = [1,1,1,2,2,3]
 Output: 5, nums = [1,1,2,2,3,_]
 
 Time Complexity: O(n)
 Space Complexity: O(1)
    
 */

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index = 0
    var cnt = 0
    var value = nums[0]

    for val in nums {
        if value == val {
            cnt += 1
        } else {
            cnt = 1
            value = val
        }
        if cnt <= 2 {
            nums[index] = val
            index += 1
        }
    }

    return index
}

var array = [1,1,1,2,2,3]
let result = removeDuplicates(&array)
