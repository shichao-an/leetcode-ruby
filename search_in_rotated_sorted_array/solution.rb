# Suppose a sorted array is rotated at some pivot unknown to you beforehand.
#
# (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
#
# You are given a target value to search. If found in the array return its
# index, otherwise return -1.
#
# You may assume no duplicate exists in the array.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  n = nums.length
  left = 0
  right = n - 1
  while left <= right
    mid = left + (right - left) / 2
    if target == nums[mid]
      return mid
    # If left side is sorted
    elsif nums[mid] >= nums[-1]
      # Search the left side if target is within that range
      if nums[left] <= target && target < nums[mid]
        right = mid - 1
      else
        left = mid + 1
      end
    # If right side is sorted
    else
      # Search the right side if target is within that range
      if nums[mid] < target && target <= nums[right]
        left = mid + 1
      else
        right = mid - 1
      end
    end
  end
  -1
end

a1 = [4, 5, 6, 7, 0, 1, 2]
p search(a1, 0)
p search(a1, 5)
p search(a1, 2)
