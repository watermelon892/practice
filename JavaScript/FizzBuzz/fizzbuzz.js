const fizzbuzz = (i) => {
    if(i % 15 === 0) {
        return "FizzBuzz";
    } else if (i % 3 === 0) {
        return "Fizz";
    } else if (i % 5 === 0) {
        return "Buzz";
    }
    return i;
};

const run = (n) => {
    for(let i = 1; i <= n; i++) {
        console.log(fizzbuzz(i));
    }
};

run(15);
