class Penguin
  constructor: (name) ->
    this.name = name
    this.numLegs = 2

class Emperor
  constructor: (name) ->
    this.name = name

Emperor.prototype = new Penguin

emperor = new Emperor('potooooooooo')

console.log emperor.numLegs
