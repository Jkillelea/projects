extern crate rand;

use std::io;
use std::cmp::Ordering;
use rand::Rng;

macro_rules! getln {
    ($x:expr) => ( {io::stdin().read_line($x).expect("Failed to read line!");} ); // getln!(&mut buff);

    () => ({ // let buff = getln!();
        let mut buff = String::new();
        io::stdin().read_line(&mut buff).expect("Failed to read line!");
        buff
    });
}

fn main() {
    println!("Guess the number!");

    let secret_number = rand::thread_rng().gen_range(1, 101);
    // println!("The secret number is: {}", secret_number);

    loop {
        println!("Enter your guess!");

        let guess = getln!();

        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => continue // ignore errors
        };

        println!("You guessed {}", guess);

        match guess.cmp(&secret_number) {
            Ordering::Less    =>   println!("Too small!"),
            Ordering::Greater =>   println!("Too big!"),
            Ordering::Equal   => { println!("You win!"); break; }
        }
    }
}
