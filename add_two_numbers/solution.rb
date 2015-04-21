# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  carry = 0
  res = nil
  res_end = nil
  while !l1.nil? || !l2.nil? || carry == 1
    temp = 0
    unless l1.nil?
      temp += l1.val
      l1 = l1.next
    end
    unless l2.nil?
      temp += l2.val
      l2 = l2.next
    end
    temp += carry
    digit = temp % 10
    carry = temp / 10
    if res.nil?
      res = ListNode.new(digit)
      res_end = res
    else
      res_end.next = ListNode.new(digit)
      res_end = res_end.next
    end
  end
  res
end
