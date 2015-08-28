# Suppose a sorted array is rotated at some pivot unknown to you beforehand.
#
# (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
#
# Follow up for "Search in Rotated Sorted Array":
#
# What if duplicates are allowed?
#
# Would this affect the run-time complexity? How and why?
#
# Write a function to determine if a given target is in the array.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
  n = nums.length
  left = 0
  right = n - 1
  while left <= right
    mid = left + (right - left) / 2
    if target == nums[mid]
      return true
    # Left side is sorted
    elsif nums[mid] > nums[right]
      if nums[left] <= target && target < nums[mid]
        right = mid - 1
      else
        left = mid + 1
      end
    # Right side sorted
    elsif nums[mid] < nums[right]
      if nums[mid] < target && target <= nums[right]
        left = mid + 1
      else
        right = mid - 1
      end
    else
      right -= 1
    end
  end
  false
end

p search([1], 0)
a1 = [4, 5, 6, 7, 0, 1, 2]
p search(a1, 0)
