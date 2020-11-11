def fibs(n)
  return [0] if n <= 0

  return [0, 1] if n == 1

  a = fibs(n - 1)
  a.push (a[-1] + a[-2])
end

p fibs 10
