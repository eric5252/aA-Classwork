Array.prototype.bubbleSort = function() {
    debugger
    let sorted = false;
    while (!sorted) {
        sorted = true;
        for(let i=0;i<this.length-1;i++) {
            if(this[i]>this[i+1]) {
           [this[i],this[i+1]] = [this[i+1],this[i]];
            sorted = false;
            }
        }
    }
    return this;
}

console.log([1,2,3,2,8,4].bubbleSort())

String.prototype.substrings = function() {
    let res = [];
    for (let i = 0; i < this.length; i++){
        for(let j = i+1; j <= this.length; j++){
            res.push(this.slice(i,j));
        }
    }
    return res;
}

console.log('cat'.substrings())


// [a,b,c] = [[a],[ab],[abc].[b],[c],[bc]]
// .slice(0,1)   slice(i,j) 0, 1  => (0...1) => 0
// .slice(i)   (i..-1)