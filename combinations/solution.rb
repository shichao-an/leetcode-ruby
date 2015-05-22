# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
  a = (1..n).to_a
  combine_helper(a, k)
end

def combine_helper(a, k)
  return [[]] if k == 0
  res = []
  a.each_with_index do |e, i|
    p e
    rest_comb = combine_helper(a[i + 1..-1], k - 1)
    rest_comb.each do |comb|
      comb.unshift(e)
    end
    res += rest_comb
  end
  res
end

p combine(1, 1)
p combine(4, 2)
