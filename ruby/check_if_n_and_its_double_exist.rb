# https://leetcode.com/problems/check-if-n-and-its-double-exist/

def check_if_exist(arr)
  arr.each_with_index do |num, index|
    if arr.include? num * 2
      return true if index != arr.index(num * 2)
    end
  end
  false
end
