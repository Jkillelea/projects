secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
#Hash data structures -- use the "keypair => value" form of assignment

#Create a Hash without putting data inside it
this_hash = Hash.new
that_hash = Hash.new("default value")

#Although keys are used in the above example, symbols are the preferred way to do it in Ruby

#here are two hashes using symbols

old_symbol_hash = {
  :symbol1 => "value1",
  :symbol2 => "value2"
}

#on Ruby 1.9 and up, hashes can take a new form.

new_symbol_hash = {
  new_symbol1: "value",
  new_symbol2: "value2"
}

# NOTE: symbols use less memory and are faster to acess. The difference can be an order of magnitude.
