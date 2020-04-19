# https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/

def replace_elements(arr)
  output = []

  (arr.length - 1).times do |i|
    output << arr.slice(i + 1, arr.length).max
  end
  output << -1
end
