// Consumes whatever is passed to them.
let one_to_hundred = (0...100).collect::<Vec<i32>>(); // Returns Vec<i32>

// Another example
let greater_than_42 = (0...100).find(|x| // takes a closure
    *x > 42
);
match greater_than_42 {
    Some(_) => println!("Found a match")
    None    => println!("No matches found. Thanks, me too.")
}

// here's `fold`
let sum = (1..4).fold(0, |sum, x| sum + x); // fold(base, |accumulator, element| ...)
