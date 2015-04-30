# Definition for a binary tree node
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  path = []
  return path if root.nil?
  stack = []
  while !stack.empty? || !root.nil?
    if !root.nil?
      stack.push(root)
      root = root.left
    else
      root = stack.pop
      path.push(root.val)
      root = root.right
    end
  end
  path
end
