# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/

def max_profit(prices)
  profit = 0
  buy_price = 0
  bought = false

  prices.each_with_index do |current_price, index|
    next_price = prices[index + 1]

    if !bought
      next if next_price.nil?

      if current_price < next_price
        buy_price = current_price
        bought = true
      end

    elsif bought
      next if !next_price.nil? && current_price < next_price

      if buy_price < current_price
        profit += (current_price - buy_price)
        buy_price = 0
        bought = false
      end
    end
  end

  profit
end
