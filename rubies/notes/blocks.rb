# A ruby block is an anonymous function which can take input arguments as well as be passed
# to another function.

# Importantly, blocks belong to no man. Unlike a proper function, they have no parent class.

# There's many ways to create blocks in ruby. One of these is using the lambda constructor:
block = lambda { |args| "do something here" }

# This can then be called with
block.call

# HOWEVER, they're still objects themselves!
block.object_id  # ==> *some number*
block.class      # ==>  Proc
block.superclass # ==>  Object (the root class!)
# All have valid returns!
