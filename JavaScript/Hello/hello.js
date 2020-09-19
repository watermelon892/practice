process.stdin.on('data', function (line) {
    console.log("Hello, " + line);
    process.exit(0);
});
