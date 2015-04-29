# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  return 0 if prices.empty?
  n = prices.length
  m1 = (1..n).collect { 0 }
  m2 = (1..n).collect { 0 }
  max_profit1 = 0
  min_price1 = prices[0]
  max_profit2 = 0
  max_price2 = prices[-1]
  (0..n - 1).each do |i|
    max_profit1 = [max_profit1, prices[i] - min_price1].max
    m1[i] = max_profit1
    min_price1 = [min_price1, prices[i]].min
  end
  (0..n - 1).each do |i|
    max_profit2 = [max_profit2, max_price2 - prices[n - 1 - i]].max
    m2[n - 1 - i] = max_profit2
    max_price2 = [max_price2, prices[n - 1 - i]].max
  end
  max_profit = 0
  (0..n - 1).each do |i|
    max_profit = [max_profit, m1[i] + m2[i]].max
  end
  max_profit
end
