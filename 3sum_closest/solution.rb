def three_sum_closet(num, target)
  num.sort!
  n = num.length
  res = num[0] + num[1] + num[2]
  (0..n - 3).each do |i|
    l = i + 1
    r = n - 1
    while l < r
      s = num[i] + num[l] + num[r]
      res = s if (s - target).abs < (res - target).abs
      if s == target
        return s
      elsif s < target
        l += 1
      else
        r -= 1
      end
    end
  end
  res
end

num = [-4, 2, 4, 6, 11]
target = 14
res = three_sum_closet(num, target)
puts res
