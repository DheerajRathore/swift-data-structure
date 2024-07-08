/*
 Rearrange Array Elements by Sign.
 Problem Statement: There’s an array ‘A’ of size ‘N’ with an equal number of positive and negative elements. Without altering the relative order of positive and negative elements, you must return an array of alternately positive and negative values.
 
 Time Complexity: O(N).
 Space Complexity:  O(N)
 */



func rearrangeArrayBySign(_ arr: [Int]) -> [Int] {
   
    var rearrangeArray = [0,0,0,0]
    // positive elements start from 0 and negative from 1.
    var posIndex = 0
    var negIndex = 1
    for i in 0..<arr.count {
        // Fill negative elements in odd indices and inc by 2.
        if(arr[i]<0){
            rearrangeArray[negIndex] = arr[i]
            negIndex = negIndex + 2
        } 
        else{
            // Fill positive elements in even indices and inc by 2.
            rearrangeArray[posIndex] = arr[i]
            posIndex = posIndex + 2
        }
    }
    return rearrangeArray
}

let answer = rearrangeArrayBySign([1,2,-4,-5])
