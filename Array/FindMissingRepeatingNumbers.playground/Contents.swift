/*
 Find the repeating and missing numbers.
 Problem Statement: You are given a read-only array of N integers with values also in the range [1, N] both inclusive. Each integer appears exactly once except A which appears twice and B which is missing. The task is to find the repeating and missing numbers A and B where A repeats twice and B is missing.
 
 Time Complexity: O(2N), where N = the size of the given array.
 Reason: We are using two loops each running for N times. So, the time complexity will be O(2N).
 Space Complexity: O(N) as we are using a hash array to solve this problem.
 
 
 */

func findMissingRepeatingNumbers(_ a: [Int]) -> [Int] {
    let n = a.count
    var hash = [Int](repeating: 0, count: n + 1)
    
    // Update the hash array:
    for num in a {
        hash[num] += 1
    }
    
    // Find the repeating and missing number:
    var repeating = -1
    var missing = -1
    for i in 1...n {
        if hash[i] == 2 {
            repeating = i
        } else if hash[i] == 0 {
            missing = i
        }
        
        if repeating != -1 && missing != -1 {
            break
        }
    }
    
    return [repeating, missing]
}

findMissingRepeatingNumbers([3, 1, 2, 5, 4, 6, 7, 5])
