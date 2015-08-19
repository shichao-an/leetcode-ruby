# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  nums.sort!
  subsets_helper(nums)
end

def subsets_helper(nums)
  if nums.empty?
    return [[]]
  else
    res = [[]]
    nums.each_with_index do |e, i|
      rest_subsets = subsets_helper(nums[i + 1..-1])
      rest_subsets.each do |subset|
        subset.insert(0, e)
      end
      res += rest_subsets
    end
  end
  res
end

p subsets([3, 2, 1])
