def anagrams(strs)
  d = {}
  res = []
  strs.each do |s|
    key = make_key(s)
    if d.key?(key)
      d[key].push(s)
    else
      d[key] = [s]
    end
  end
  d.each_key do |key|
    res.concat(d[key]) if d[key].length > 1
  end
  res
end

def make_key(s)
  d = {}
  res = []
  s.each_char do |c|
    if d.key?(c)
      d[c] += 1
    else
      d[c] = 1
    end
  end
  ('a'..'z').each do |c|
    if d.key?(c)
      res.push(c)
      res.push(d[c])
    end
  end
  res.join
end

strs = %w(abc pcd cba ssd psd cdp)
p anagrams(strs)
