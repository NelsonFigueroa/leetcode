# https://leetcode.com/problems/richest-customer-wealth/

def maximum_wealth(accounts)
  sums = []

  accounts.each do |account|
    sums << account.inject(:+)
  end

  sums.max
end
