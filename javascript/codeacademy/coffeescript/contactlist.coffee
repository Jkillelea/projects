friends = {
  bill: {
    firstName: "Bill"
    lastName: "Gates"
    number: "lol idk"
    address: []
  },
  steve: {
    firstName: "Steve"
    lastName: "Jobs"
    number: "lol idk"
    address: []
  }
}


list = (object) ->
  for key of object
    console.log key
# --------JS-------------
# list = function(object) {
#   for (var key in object) {
#     console.log(key);
#   }
# };
# -----------------------

# this compiles into literal evil
search = (firstName) ->
  for key, value of friends
    if friends[key].firstName is firstName
      console.log firstName
      friends[key]
