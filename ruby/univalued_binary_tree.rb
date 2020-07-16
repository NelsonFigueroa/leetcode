# Ruby 2.6.3
# https://leetcode.com/problems/univalued-binary-tree/

# Node definition
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

# Actual solution

def is_unival_tree(root)
  return true if root.nil?

  return false if !root.left.nil? && (root.left.val != root.val)

  return false if !root.right.nil? && (root.right.val != root.val)

  return true if is_unival_tree(root.left) && is_unival_tree(root.right)

  false
end
