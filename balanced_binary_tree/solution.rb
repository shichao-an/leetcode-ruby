def is_balanced(root)
  if root.nil?
    return true
  else
    if is_balanced(root.left) && is_balanced(root.right)
      return (depth(root.left) - depth(root.right)) <= 1
    else
      return false
    end
  end
end

def depth(root)
  if root.nil?
    return -1
  else
    [depth(root.left), depth(root.right)].max + 1
  end
end

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val, left, right)
    @val = val
    @left = left
    @right = right
  end
end

a = TreeNode.new(3, nil, nil)
b = TreeNode.new(2, nil, nil)
root = TreeNode.new(1, a, b)

puts is_balanced(root)
