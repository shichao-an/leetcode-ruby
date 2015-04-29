# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  return 0 if prices.empty?
  max_profit = 0
  (1..prices.length - 1).each do |i|
    max_profit += prices[i] - prices[i - 1] if prices[i] > prices[i - 1]
  end
  max_profit
end
