/*
    Merge 2 sorted Array.
 You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

 Merge nums1 and nums2 into a single array sorted in non-decreasing order.
 Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
 Output: [1,2,2,3,5,6]
 
 Time Complexity: O(m+n)
 Space Complexity: O(1)
 */

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = m - 1
    var j = n - 1
    var k = m + n - 1

    while i >= 0 && j >= 0 {
        if nums1[i] > nums2[j] {
            nums1[k] = nums1[i]
            i -= 1
            k -= 1
        } else {
            nums1[k] = nums2[j]
            j -= 1
            k -= 1
         }
    }
    while j >= 0 {
        nums1[k] = nums2[j]
        j -= 1
        k -= 1
    }
}

var array1 = [1,2,3,0,0,0]
let array2 = [2,5,6]
merge(&array1, 3, array2, 3)
