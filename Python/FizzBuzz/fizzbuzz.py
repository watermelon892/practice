i = 1
while i <= 15 :
    if i % 15 == 0 :
        print('FizzBuzz')
    elif i % 3 == 0 :
        print('Fizz')
    elif i % 5 == 0 :
        print('Buzz')
    else :
        print(i)
    i += 1
