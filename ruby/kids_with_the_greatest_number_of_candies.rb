# https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/submissions/

def kids_with_candies(candies, extra_candies)
  output = []
  max = candies.max

  candies.each do |kid_candy_count|
    if kid_candy_count + extra_candies >= max
      output << true
      next
    else
      output << false
    end
  end

  output
end
