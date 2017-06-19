use std::env;

fn main() {
    let mut args = env::args();
    let _        = args.next();

    while let Some(arg) = args.next() {
        println!("{}", contains(1, arg.as_str()));
    }
}

fn contains(val: i32, string: &str) -> bool {
    // iterates over every word in a string and returns true if it finds the number 'val'
    for result in string.split_whitespace()
                        .map(|val| val.parse::<i32>()) {
        if let Ok(num) = result {
            if num  == val {
                return true
            }
        }
    }
    false
}
