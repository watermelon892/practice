function fizzbuzz(i)
    if i % 15 == 0 "FizzBuzz"
    elseif i % 3 == 0 "Fizz"
    elseif i % 5 == 0 "Buzz"
    else i
    end
end

function run(n)
    for i = 1:n
        println(fizzbuzz(i))
    end
end

run(15)
