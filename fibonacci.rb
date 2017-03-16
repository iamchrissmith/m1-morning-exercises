# print first 25 numbers in fib
# print if each number is prime or not

def is_prime?(num)
  if num < 0
    false
  elsif num.between?(0,2)
    true
  elsif ((2..Math.sqrt(num).floor).to_a.all?{|x| num % x != 0})
    true
  else
    false
  end
 end

numbers = []
until numbers.length == 25
  calc1 = numbers.last
  calc2 = numbers[-2]

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
  if is_prime?(n)
    puts "#{idx + 1}:\t#{n}\t(Prime)"
  else
    puts "#{idx + 1}:\t#{n}"
  end
end
