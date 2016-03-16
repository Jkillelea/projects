var answer = prompt("Add your question here!");

switch(answer) {
  case '':
    console.log("include a question, dipshit");
    break;
  // Add your code here!
  case 'no':
    console.log("well that's your problem, huh?");
    break;
  case "okay":
    console.log("Well then ask one!");
    break;
  default:
    console.log("too bad.");
}
