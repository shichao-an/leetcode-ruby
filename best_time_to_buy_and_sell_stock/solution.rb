# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  return 0 if prices.empty?
  max_profit = 0
  min_price = prices[0]
  prices.each do |p|
    max_profit = [max_profit, p - min_price].max
    min_price = [min_price, p].min
  end
  max_profit
end
