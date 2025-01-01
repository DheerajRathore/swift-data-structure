/*
 Given an array arr[] of non-negative integers. Each array element represents the maximum length of the jumps that can be made forward from that element. This means if arr[i] = x, then we can jump any distance y such that y ≤ x. Find the minimum number of jumps to reach the end of the array starting from the first element. If an element is 0, then you cannot move through that element.
 Note:  Return -1 if you can't reach the end of the array.
 
 Time Complexity: O(n)
 Auxiliary Space: O(1)
 */
func minJumps(arr: [Int]) -> Int {
    let n = arr.count
    
    // If the array has only one element, no jumps are needed
    if n <= 1 {
        return 0
    }
    
    // If the first element is 0, we can't move forward
    if arr[0] == 0 {
        return -1
    }
    
    // Initialize variables
    var maxReach = arr[0]    // The farthest point reachable
    var steps = arr[0]       // Steps we can still take
    var jumps = 1            // Number of jumps taken
    
    // Start traversing the array
    for i in 1..<n {
        // If we have reached the last element
        if i == n - 1 {
            return jumps
        }
        
        // Update the farthest point reachable
        maxReach = max(maxReach, i + arr[i])
        
        // Use a step to move forward
        steps -= 1
        
        // If no more steps left
        if steps == 0 {
            // We need to make another jump
            jumps += 1
            
            // If the current index is beyond the maximum reachable index
            if i >= maxReach {
                return -1
            }
            
            // Reinitialize steps to the amount of steps we can take from the current position
            steps = maxReach - i
        }
    }
    
    return -1 // If we exit the loop, we couldn't reach the end
}

let arr = [1, 4, 3, 2, 6, 7]
let result = minJumps(arr: arr)
print(result)
