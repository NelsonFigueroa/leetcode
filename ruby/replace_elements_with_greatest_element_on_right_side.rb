# https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/

def replace_elements(arr)
  last = arr.length - 1
  arr.each_index do |i|
    arr[i] = arr[i + 1..last].max
  end

  arr[last] = -1

  arr
end
