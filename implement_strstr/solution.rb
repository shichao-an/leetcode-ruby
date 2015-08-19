# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  n = haystack.length
  m = needle.length
  (0..n - m).each do |i|
    matched = true
    for j in (0..m - 1)
      if haystack[i + j] != needle[j]
        matched = false
        break
      end
    end
    return i if matched
  end
  -1
end

p str_str('abcdabcdefg', 'bcd')
p str_str('', 'a')
