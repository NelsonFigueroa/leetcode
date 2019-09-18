# Ruby 2.6.3
# https://leetcode.com/problems/day-of-the-week/

require 'date'

def day_of_the_week(day, month, year)
  # %A will return the full name of the day
  return Date.new(year, month, day).strftime("%A")
end

puts day_of_the_week(3, 7, 1994)