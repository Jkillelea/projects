fn main(){
    let x = 1;
    match x {
        1 => println!("one!"),
        2 => println!("two!"),
        3 => println!("three!"),
        _ => println!("everything else!"),
    };

    // There's problems with this though, since it changes binding
    let x = 1;
    let c = 'c';

    match c {
        x => println!("x: {} c: {}", x, c),
    };
    println!("x: {}", x);
    /*
     * prints "x: c c: c"
     * "x: 1"
     * So, x => matches the pattern and introduces a new binding named x which shadows the original
     */

    // helpfully, we can match and destructure Structs
    struct Point {
        x: i32,
        y: i32,
    }
    let origin = Point {x: 0, y: 0};

    match origin {
        Point {x, y} => println!("({}, {})", x, y),
    }

    match origin {
        Point {x: x1, y: y1} => println!("({}, {})", x1, y1),
    }

    match origin { // if we only care about field x
        Point {x, ..} => println!("{}", x),
    }
    match origin { // works for any field, not just the first
        Point {y, ..} => println!("{}", y),
    }

    /*
     * _ can be used to disregard the type and value of a match
     * For match Result<T, E>:
     */
     match some_value {
        Ok(value) => println!("Got value {}", value),
        Err(_) => println!("An error occurred"), // we don't care about the type or value of the error
     }

    // Works for any pattern that creates a binding
    fn coordinate() -> (i32, i32, i32) { /*...*/ }
    let (x, _, z) = coordinate();

    /*
     * It’s worth noting that using _ never binds the value in the first place, which means that the value does not move:
     */
    let tuple: (u32, String) = (5, String::from("five"));
    // Here, tuple is moved, because the String moved:
    let (x, _s) = tuple;
    // The next line would give "error: use of partially moved value: `tuple`".
    // println!("Tuple is: {:?}", tuple);

    // However,
    let tuple = (5, String::from("five"));
    // Here, tuple is _not_ moved, as the String was never moved, and u32 is Copy:
    let (x, _) = tuple;
    // That means this works:
    println!("Tuple is: {:?}", tuple);

    // if you want a reference to a value:
    let x = 5;
    match x {
        ref r => println!("got a reference to {}", r)
    }
    // a mutable reference
    let mut x = 5;
    match x {
        ref mut mr => println!("got a mutable reference to {}", mr)
    }

    // ranges can be matched
    let x = 1;
    match x {
        1...5 => println!("one through 5")
        _     => println!("anything")
    }

    // characters can be ranged
    let x = 'c';
    match x {
        'a'...'j' => println!("early letter"),
        'k'...'z' => println!("late letter"),
        _         => println!("something else"),
    }

    // can bind values to names with @:
    let x = 1;
    match x {
        e @ 1 ... 5 => println!("got a range element {}", e), // we can now use e
        _           => println!("anything"),
    }


}
