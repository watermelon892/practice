n = 15
i = 1
while i <= n
  if i % 15 == 0
    puts "FizzBuzz"
  elsif i % 5 == 0
    puts "Fizz"
  elsif i % 3 == 0
    puts "Buzz"
  else
    puts i
  end
  i += 1
end
