# Ruby 2.5.0
# https://leetcode.com/problems/merge-two-binary-trees/

# Class defining nodes
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

# t1 and t2 are the root tree nodes of each tree
def merge_trees(t1, t2)
  return t2 if t1.nil?
  return t1 if t2.nil?

  t1.val += t2.val
  t1.left = merge_trees(t1.left, t2.left)
  t1.right = merge_trees(t1.right, t2.right)
  return t1
end
