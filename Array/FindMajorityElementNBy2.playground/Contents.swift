/*
 Find the Majority Element that occurs more than N/2 times

 Problem Statement: Given an array of N integers, write a program to return an element that occurs more than N/2 times in the given array. You may consider that such an element always exists in the array.
 
 Time Complexity: O(N*logN) + O(N), where N = size of the given array.
 Reason: We are using a map data structure. Insertion in the map takes logN time. And we are doing it for N elements. So, it results in the first term O(N*logN). The second O(N) is for checking which element occurs more than floor(N/2) times. If we use unordered_map instead, the first term will be O(N) for the best and average case and for the worst case, it will be O(N2).

 Space Complexity: O(N) as we are using a map data structure.

 */

func findMajorityElementNBy2(_ arr: [Int]) -> Int {
    
    var dict:[Int:Int] = [:]
    
    for num in arr {
        dict[num] =  (dict[num] ?? 0) + 1
    }
    
    for (key, value) in dict {
        
        if value > arr.count/2 {
            return key
        }
    }
        return 0
}

findMajorityElementNBy2([2, 2, 1, 1, 1, 2,2,1,1])
