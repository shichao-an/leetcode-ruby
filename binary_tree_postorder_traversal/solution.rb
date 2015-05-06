# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def postorder_traversal(root)
  res = []
  return res if root.nil?
  stack = []
  stack.push(root)
  until stack.empty?
    root = stack.pop
    res.push(root.val)
    stack.push(root.left) unless root.left.nil?
    stack.push(root.right) unless root.right.nil?
  end
  res.reverse!
end
