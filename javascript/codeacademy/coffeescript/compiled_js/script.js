// Generated by CoffeeScript 1.9.3
var aProperty, james;

james = {
  job: 'programmer',
  married: false,
  speak: function(condition) {
    console.log("Hello, I am feeling " + condition);
  },
  sayJob: function(job) {
    console.log("Hi, I work as a " + this.job);
  }
};

aProperty = 'job';

console.log(james[aProperty]);
