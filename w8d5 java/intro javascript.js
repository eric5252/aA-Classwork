class Clock {

    constructor() {
        const time = new Date();
        this.hours = time.getHours();
        this.minutes = time.getMinutes();
        this.seconds = time.getSeconds();
    }

    printTime() {
   
        console.log(`${this.hours}:${this.minutes}:${this.seconds}`)
    }

    _tick() {
        setInterval(() => {  
            this.seconds += 1;
          }, 1000);
       }

}

const clock = new Clock();
console.log(clock)