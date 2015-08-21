# Given a sorted integer array without duplicates, return the summary of its
# ranges.
#
# For example, given [0,1,2,4,5,7], return ["0->2","4->5","7"].

# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  res = []
  n = nums.length
  left = -1
  right = -1
  nums.each_with_index do |e, i|
    if i == 0
      left = 0
      right = 0
    else
      if e != nums[i - 1] + 1
        r = make_range(left, right, nums)
        res.push(r)
        left = i
      end
      right = i
    end
    if i == n - 1
      right = i
      r = make_range(left, right, nums)
      res.push(r)
    end
  end
  res
end

def make_range(left, right, nums)
  if right > left
    return "#{nums[left]}->#{nums[right]}"
  elsif right == left
    return "#{nums[left]}"
  end
end

a1 = [0, 1, 2, 4, 5, 7]
a2 = [0, 5, 9]
p summary_ranges(a1)
p summary_ranges(a2)
