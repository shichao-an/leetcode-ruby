# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def zigzag_level_order(root)
  res = []
  return res if root.nil?
  queue = []
  level = []
  rev = false
  queue.push(root)
  queue.push(nil)
  until queue.empty?
    root = queue.shift
    if root.nil?
      queue.push(nil) unless queue.empty?
      res.push(Array.new(level))
      level = []
      rev = !rev
    else
      if rev == false
        level.push(root.val)
      else
        level.unshift(root.val)
      end
      queue.push(root.left) unless root.left.nil?
      queue.push(root.right) unless root.right.nil?
    end
  end
  res
end
