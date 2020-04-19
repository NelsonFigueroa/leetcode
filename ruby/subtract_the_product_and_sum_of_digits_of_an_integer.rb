# https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/

def subtract_product_and_sum(n)
  n = n.to_s.chars.map!(&:to_i)
  product = n.inject(:*)
  sum = n.inject(:+)
  product - sum
end
