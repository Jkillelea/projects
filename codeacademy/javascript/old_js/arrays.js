/*jshint multistr:true */

var text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmjakeod tempor jake incididujakent ut labore et dolore magna aliqua. Ut jake enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in jake reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
var myName = "jake";
var hits = [];

for (var i = 0; i < text.length; i++) {

  if (text[i] === myName[0]) {

    for (var j = i +1; j < i + myName.length; j++) {
      hits.push(text[j]);
    }
  }
}

if (hits.length == 0) {
  console.log("your name wasn't found");
} else {
  console.log(hits);
}
