const readline = require('readline');

const reader = readline.createInterface({
      input: process.stdin, 
      output: process.stdout
});

function addNumbers(sum, numsLeft, completionCallback) {
    
    if (numsLeft > 0){
        reader.question('Please Enter a Number:', (response) => {
        let num = response;
        const number = Number.parseInt(num);
            
        sum += number;
        console.log(sum);
            return addNumbers(sum, numsLeft - 1, completionCallback);
        }); 
    }else if (numsLeft === 0) {
       reader.close();
       return ctompletionCallback(sum);
    };
};

addNumbers(0, 3, sum => console.log(`Total Sum: ${sum}`));