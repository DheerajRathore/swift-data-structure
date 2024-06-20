//https://leetcode.com/problems/two-sum/description/
// Two Sum
//Example 1:
//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map = [Int: Int]()
    for (i, n) in nums.enumerated() {
        let diff = target - n
        if let j = map[diff] {
            return [i, j]
        }
        map[n] = i
    }
    return []
}

let ans = twoSum([2,7,11,15], 9)
print(ans)
