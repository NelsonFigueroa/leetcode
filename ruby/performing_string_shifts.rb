def string_shift(s, shift)
  left_shift = 0
  right_shift = 0

  shift.each do |arr|
    if arr[0].zero?
      left_shift += arr[1]
    else
      right_shift += arr[1]
    end
  end

  shift_amount = left_shift - right_shift
  s = s.split('')

  if shift_amount.positive?
    # do left shifts
    shift_amount.times do
      s << s.shift
    end
  else
    # do right shifts
    s.reverse!
    shift_amount.abs.times do
      s << s.shift
    end
    s.reverse!
  end

  s.join('')
end
