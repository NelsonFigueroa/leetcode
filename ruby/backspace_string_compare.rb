def backspace_compare(s, t)
  s.chars.count('#').times do
    s = s.gsub(/[a-z]#/, '')
  end

  s = s.gsub(/#/, '')

  t.chars.count('#').times do
    t = t.gsub(/[a-z]#/, '')
  end

  t = t.gsub(/#/, '')

  return true if s == t

  false
end
