class Solution
  def threeSum(num)
    num.sort!
    p num
    res = []
    (0..num.length - 3).each do |i|
      next unless i == 0 || i > 0 && num[i - 1] != num[i]
      left = i + 1
      right = num.length - 1
      while left < right
        s = num[i] + num[left] + num[right]
        if s == 0
          res.push [num[i], num[left], num[right]]
          left += 1
          right -= 1
          left += 1 while left < right && num[left] == num[left - 1]
          right += 1 while right > left && num[right] == num[right + 1]
        elsif s < 0
          left += 1
        else
          right -= 1
        end
      end
    end
    res
  end
end

s = Solution.new
p s.threeSum [-1, -3, 0, 1, 3, 5, 2]
