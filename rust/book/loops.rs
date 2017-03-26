fn main() {
    // loop { // better than 'while true'
    //     println!("Loop forever!");
    // }

    let mut x = 5; // i32
    let mut done = false; // bool

    while !done {
        x += x-3;
        println!("{}", x);
        if x % 5 == 0 {
            done = true; // statement
        }
    }

    for x in 0..10 { // iterator (0 thru 9)
        println!("{}", x);
    }

    for (index, value) in (5..10).enumerate() { // enum (keeps track of how many times it's looped)
        println!("index = {} | value = {}", index, value);
    }

    // iterate through the lines in a string
    let lines = "hello\nworld".lines();
    for (linenumber, line) in lines.enumerate() {
        println!("{}: {}", linenumber, line);
    }

    // end early
    let mut x = 5;
    loop {
        x += x - 3;
        println!("{}", x);
        if x % 5 == 0 { break; }
    }

    // skip certian iterations
    for x in 0..10 {
        if x % 2 == 0 { continue; }
        println!("{}", x);
    }

    // loop labels
    'outer: for x in 0..10 {
        'inner: for y in 0..10 {
            if x % 2 == 0 { continue 'outer; }
            if y % 2 == 0 { continue 'inner; }
            println!("x: {}, y: {}", x, y);
        }
    }
}
