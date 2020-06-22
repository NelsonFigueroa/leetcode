# https://leetcode.com/problems/range-sum-of-bst/

# node definition

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# actual solution implementation

def range_sum_bst(root, l, r)
  # need to reset this for every recursive loop
  total_sum = 0

  if (root.val >= l) && (root.val <= r)
    total_sum += root.val
  end

  # traverse left if root.left is not nil
  total_sum += range_sum_bst(root.left, l, r) if root.left

  # traverse right is root.right is not nil
  total_sum += range_sum_bst(root.right, l, r) if root.right

  return total_sum
end