# Ruby 2.6.3
# https://leetcode.com/problems/univalued-binary-tree/

# Node definition
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# Actual solution

def is_unival_tree(root)
  if root.nil?
    return true
  end

  if (root.left != nil) && (root.left.val != root.val)
    return false
  end

  if (root.right != nil) && (root.right.val != root.val)
    return false
  end

  if is_unival_tree(root.left) && is_unival_tree(root.right)
    return true
  end

  false
end