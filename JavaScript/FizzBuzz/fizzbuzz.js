function fizzbuzz(i) {
    let result;
    if(i % 15 === 0) result = "FizzBuzz";
    else if (i % 3 === 0) result = "Fizz";
    else if (i % 5 === 0) result = "Buzz";
    else result = i;
    return result;
}

function run(n) {
    for(let i = 1; i <= n; i++) {
        console.log(fizzbuzz(i));
    }
}

run(15);
