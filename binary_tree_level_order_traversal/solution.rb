def level_order(root)
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
  res
end
