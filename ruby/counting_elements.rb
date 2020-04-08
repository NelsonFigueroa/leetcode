def count_elements(arr)
  count = 0
  arr.each do |num|
    count += 1 if arr.include? num + 1
  end
  count
end
