# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  if nums.empty?
    return [[]]
  else
    res = []
    nums.each_with_index do |e, i|
      rest = nums[0, i] + nums[i + 1..-1]
      rest_perms = permute(rest)
      rest_perms.each do |perm|
        perm.push(e)
      end
      res += rest_perms
    end
    res
  end
end

p permute([1, 2, 3])
