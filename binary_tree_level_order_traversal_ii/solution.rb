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
def level_order_bottom(root)
  res = []
  return res if root.nil?
  queue = []
  level = []
  queue.push(root)
  queue.push(nil)
  until queue.empty?
    root = queue.shift
    if root.nil?
      res.push(Array.new(level))
      level = []
      queue.push(nil) unless queue.empty?
    else
      level.push(root.val)
      queue.push(root.left) unless root.left.nil?
      queue.push(root.right) unless root.right.nil?
    end
  end
  res.reverse!
end
