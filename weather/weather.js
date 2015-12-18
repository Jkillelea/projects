//NOT COMPLETE


var http = require('http'); //module import

var apikey = "8d67e403165669d7"; //wunderground api key

var requestURL = ""

function makeRequestURL(city, country,

var options = {
  hostname: requestURL,
  port: 80,
  path: '/upload',
  method: 'POST',
  headers: {
    'Content-Type': 'application/x-www-form-urlencoded',
    'Content-Length': postData.length
  }


}




http.request(options, {

}
