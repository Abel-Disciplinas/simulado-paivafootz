function bhaskara(a, b, c)
  a == 0 && error("Oh no")
  Δ = b^2 - 4a * c
  if Δ < 0
    error("Oh no")
  end
  r1, r2 = (-b - √Δ) / 2a, (-b + √Δ) / 2a
  return 0, 0
end