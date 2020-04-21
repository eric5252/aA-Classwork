Array.prototype.myEach = function(callback) {
    for(let i = 0; i < this.length; i++){
        callback(this[i]);
    }
}

// console.log([1,2,3,4].myEach(el))


Array.prototype.myMap = function(closure) {
    let arr = [];
    this.myEach( el => arr.push(closure(el)) );
    return arr;
}

Array.prototype.myReduce = function(prc,initialVal) {
    let arr = this;
    if (initialVal === undefined) {
        initialVal = arr[0];
        arr = arr.slice(1)
    }
    let res = initialVal;
    arr.myEach(el => res = prc(res, el));
    return res;
}


// [1,2,3].myReduce => 6
    //intial = arr[0] = 1
    // 2,3 
    //[1,2,3].slice(1) = [2,3] 