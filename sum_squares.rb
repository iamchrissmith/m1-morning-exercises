def sum_squares(final)
  solution = 0
  final.times do |number|
    solution += (number+1)**2
  end
  solution
end

def square_sums(final)
  solution = 0
  final.times { |number| solution += number+1 }
  solution**2
end

puts sum_squares(100)
puts square_sums(100)
puts square_sums(100) - sum_squares(100)
