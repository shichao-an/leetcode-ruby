# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  t = Array.new(n + 1, 0)
  climb_stairs_helper(n, t)
end

def climb_stairs_helper(n, t)
  return t[n] if t[n] > 0
  if n == 0 || n == 1
    t[n] = 1
  else
    t[n] = climb_stairs_helper(n - 1, t) + climb_stairs_helper(n - 2, t)
  end
  t[n]
end
