class Node
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def find_height(root)
  return 0 if root.nil?

  left_tree_height = find_height(root.left)
  right_tree_height = find_height(root.right)

  if left_tree_height > right_tree_height
    left_tree_height + 1
  else
    right_tree_height + 1
  end
end

def print_given_level(root, height, result = [])
  return if root.nil?

  if height == 1
    result << root.val
  elsif height > 1
    print_given_level(root.left, height - 1, result)
    print_given_level(root.right, height - 1, result)
  end

  result
end

def level_order_bottom(root)
  height = find_height(root)

  results = []

  until height == 0
    results << print_given_level(root, height)
    height -= 1
  end

  results
end
