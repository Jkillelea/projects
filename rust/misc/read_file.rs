use std::fs::File;
use std::io::BufReader;
use std::io::prelude::*;
use std::env;

fn main() {
    let mut args = env::args();
    let _ = args.next(); // skip the program name

    let mut contents = String::new();
    for arg in args {
        let     file = File::open(&arg).unwrap(); // normal file IO is unbuffered in Rust
        let mut file = BufReader::new(file);
        file.read_to_string(&mut contents).unwrap();
        println!("{}", contents);
    }
}
