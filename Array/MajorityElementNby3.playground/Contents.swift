/*
 Majority Elements(&gt;N/3 times) | Find the elements that appears more than N/3 times in the array
 Problem Statement: Given an array of N integers. Find the elements that appear more than N/3 times in the array. If no such element exists, return an empty vector.
 
 Time Complexity: O(N*logN), where N = size of the given array.
 Reason: We are using a map data structure. Insertion in the map takes logN time. And we are doing it for N elements. So, it results in the first term O(N*logN).
 If we use unordered_map instead, the first term will be O(N) for the best and average case and for the worst case, it will be O(N2).

 Space Complexity: O(N) as we are using a map data structure. We are also using a list that stores a maximum of 2 elements. That space used is so small that it can be considered constant.
 */

func majorityElementNBy3(_ arr: [Int]) -> [Int] {
    
    var dict:[Int: Int] = [:]
    var answer: [Int] = []
    let min = Int(arr.count/3) + 1
    for num in arr {
         dict[num] = (dict[num] ?? 0) + 1
        
        if dict[num] ?? 0 == min {
            answer.append(num)
        }
        
        if answer.count == 2 {
            break
        }
    }
    
    return answer
}


let result = majorityElementNBy3([1,2,2,3,2])
