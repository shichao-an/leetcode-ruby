class Solution
  def fourSum(num, target)
    n = num.length
    num.sort!
    res = []
    (0..n - 4).each do |a|
      next if a > 0 && num[a - 1] == num[a]
      (a + 1..n - 2).each do |b|
        next if b > a + 1 && num[b - 1] == num[b]
        c = b + 1
        d = n - 1
        while c < d
          s = num[a] + num[b] + num[c] + num[d]
          if s == target
            res.push([num[a], num[b], num[c], num[d]])
            c += 1
            d -= 1
            c += 1 while c < d && num[c] == num[c - 1]
            d -= 1 while c < d && num[d] == num[d + 1]
          elsif s < target
            c += 1
          else
            d -= 1
          end
        end
      end
    end
    res
  end
end

s = Solution.new
res = s.fourSum([-2, -1, 2, 5, 5, 7, 8], 12)
p res
