
def reverse(s,n = s.length)

  n0 = s.length - n
  s[n0],s[n-1] = s[n-1],s[n0]

  if n0 == n - 1 || n - 1 - n0 == 1
    return s
  end

  reverse(s, n - 1)

end

v = "#{gets.chomp.to_str}"
puts reverse(v)
