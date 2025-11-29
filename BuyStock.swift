# 121. Best Time to Buy and Sell Stock
Problem Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/
Solution:

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit: Int = 0
        var minPrice: Int  = Int.max

        /*
        Maximum profit only achieve when, we buy the stock in min price.
        and sell when the price is high
        */
        
        for price in prices {
            minPrice = min(minPrice, price) 
            maxProfit = max(maxProfit, price - minPrice)
        }

        return maxProfit
    }
}