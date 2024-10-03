/*
   Product of Array Except self.
   
   Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
   Time complexity of O(n)
   Space complexity of O(n), where n is the length of the input array nums
 */


func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix = Array(repeating: 1, count: nums.count)
        var suffix = Array(repeating: 1, count: nums.count)
        var result = Array(repeating: 0, count: nums.count)

        for i in 1 ..< nums.count {
            prefix[i] = prefix[i - 1] * nums[i - 1]
        }

        for i in (0 ..< nums.count - 1).reversed() {
            suffix[i] = suffix[i + 1] * nums[i + 1]
        }

        for i in 0 ..< result.count {
            result[i] = prefix[i] * suffix[i]
        }

        return result
}

let nums = productExceptSelf([1,2,3,4])
