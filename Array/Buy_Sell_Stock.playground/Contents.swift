/*
 Stock Buy And Sell
 
 Problem Statement: You are given an array of prices where prices[i] is the price of a given stock on an ith day. You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock. Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

 Time complexity: O(n)
 Space Complexity: O(1)

 */

import Foundation

func buySellStock(_ arr: [Int]) -> Int {
    
    var minValue: Int = Int.max
    var maxProfit: Int = 0
    
    for i in 0..<arr.count {
        minValue = min(minValue, arr[i])
        maxProfit = max(maxProfit, arr[i] - minValue)
        
    }
    return maxProfit
}

buySellStock([7,1,5,3,6,4,9])
