var slaying = true;
var youHit = Math.floor(Math.random() * 2); // either 0 or 1
var totalDamage = 0;

// loop
while(slaying){
  if (youHit) {
    totalDamage += damageThisRound;
    console.log("you landed a hit!");
    if (totalDamage >= 4) {
      console.log("you slayed the dragon.");
      slaying = false;
    }
    else {
      youHit = Math.floor(Math.random() * 2);
    }
  }
  else {
    console.log("your death was long and painful");
  }
  slaying = false; // no infinite looping
}
