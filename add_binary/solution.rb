# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  res = []
  b, a = a, b if a.length < b.length
  n = a.length
  m = b.length
  c = 0
  r = 0
  (0..n - 1).each do |k|
    i = n - 1 - k
    if k < m
      j = m - 1 - k
      r = (a[i].to_i + b[j].to_i + c) % 2
      c = (a[i].to_i + b[j].to_i + c) / 2
    else
      r = (a[i].to_i + c) % 2
      c = (a[i].to_i + c) / 2
    end
    res.insert(0, r)
  end
  res.insert(0, c) if c == 1
  res.join
end

p add_binary('110', '11')
p add_binary('11', '11')
p add_binary('101', '10')
