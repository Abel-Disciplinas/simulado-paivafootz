function bhaskara(a, b, c)
  a == 0 && error("Oh no")
  Δ = b^2 - 4a * c
  if Δ < 0
    error("Oh no")
  end
  r1, r2 = (-b - √Δ) / 2a, (-b + √Δ) / 2a
  if r1 < r2
    return r1, r2
  else
    return r2, r1
  end
end