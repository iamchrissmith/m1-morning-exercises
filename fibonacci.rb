# print first 25 numbers in fib
# print if each number is prime or not
require 'prime'

# def fib
numbers = []
until numbers.length == 25
  calc1 = numbers.last
  calc2 = numbers[-2]

  # puts "#{calc2} + #{calc1}"
  if !calc1 && !calc2
    numbers[0] = 0
    numbers[1] = 0
  elsif calc1 + calc2 == 0
    numbers[2] = 1
  else
    numbers << calc1 + calc2
  end
end

numbers.each.with_index do |n,idx|
  if Prime.prime?(n)
    puts "#{idx + 1}:\t#{n}\t(Prime)"
  else
    puts "#{idx + 1}:\t#{n}"
  end
end
# end
#
# fib
