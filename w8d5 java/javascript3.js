const readline = require('readline');

const reader = readline.createInterface({
        input: process.stdin,
        output: process.stdout
});

function askIfGreaterThan (el1, el2, callback){
  reader.question(`Is ${el1} greater than ${el2} ?`, (resp) =>{
    let callback = resp;
    console.log(`You replied ${resp}.`);
    return resp
  });

}



// console.log(askIfGreaterThan(9, 10, callback => console.log(`Answer: ${callback}`)));


function innerBubbleSortLoop (arr, i,madeAnySwaps,outerBubbleSortLoop){
   if (i === arr.length - 1){
      return outerBubbleSortLoop(madeAnySwaps);
   }
   
   askIfGreaterThan(arr[i],arr[i + 1], function(callback){
     if (true) {
     [arr[i], arr[i + 1]] = [arr[i + 1], arr[i]];      
      madeAnySwaps = true;
     }else{
        innerBubbleSortLoop(arr, i+1, madeAnySwaps, outerBubbleSortLoop)
     }
  
  })
  return arr;
  
}


console.log(innerBubbleSortLoop([3,4,5,9,10], 0, madeAnySwaps, outerBubbleSortLoop));

function absurdBubbleSort(arr, sortCompletionCallback){

}