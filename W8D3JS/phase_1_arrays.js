Array.prototype.uniq = function() {
    let arr = [];
    // debugger
    for(let i=0;i<this.length;i++) {
        if(arr.indexOf(this[i]) === -1) {
            arr.push(this[i]);
        }
    }
    return arr;
}
// [1,2].uniq()
 
Array.prototype.twoSum = function() {
    let arr = [];

    i = 0; 
    while(i < this.length){
        j = i+1;
        while(j < this.length){
            if(this[i] + this[j] === 0){
                arr.push([i,j]);
            }
            j++;
        }
        i++;
    }
    return arr;
}

Array.prototype.transpose = function() {
    const res = Array.from(
        { length: this[0].length },
        () => Array.from({ length: this.length })
    );
    for(let i=0;i<this[0].length;i++) {
        for(let j=0;j<this.length;j++) {
            
            res[i][j] = this[j][i]
        }
    }
    return res
}
// console.log([[1, 2, 3], [4, 5, 6], [7, 8, 9], [9, 9, 9]].transpose());
// [[1,2,3],[4,5,6],[7,8,9],[9,9,9]] = [[1,4,7,9],[2,5,8,9],[3,6,9,9]]




