# Ruby 2.5.0

# https://leetcode.com/problems/robot-return-to-origin/description/

def judge_circle(moves)
  # R = Right
  # L = Left
  # U = Up
  # D = Down

  # Set starting position
  x_axis = 0
  y_axis = 0

  # Split moves into individual characters
  sequence = moves.split('')

  sequence.each do |move|
    # Check that move is valid. Break as soon as invalid move is found.
    break unless /[RLUD]/.match(move)

    # If R (move right), increment x-axis
    if move == 'R'
      x_axis += 1
      next
    # If L (move left), decrement x-axis
    elsif move == 'L'
      x_axis -= 1
      next
    # If U (move up), increment y-axis
    elsif move == 'U'
      y_axis += 1
      next
    # If D (move down), decrement y-axis
    elsif move == 'D'
      y_axis -= 1
      next
    end
  end

  # If both x-axis and y-axis are 0, then robot is back at starting position, return true.
  if x_axis.zero? && y_axis.zero?
    return true
  else
    return false
  end
end
