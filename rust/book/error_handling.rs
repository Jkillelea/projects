// the Option<T> enum expresses the possiblity of absence
fn find(haystack: &str, needle: char) -> Option<usize> {
    for (offset, c) in haystack.char_indices() {
        if c == needle {
            return Some(offset);
        }
    }
    None
}

// Result<T, E> expresses the possiblity of an error
use std::num::ParseIntError;

fn double_number(number_str: &str) -> Result<i32, ParseIntError> {
    // match number_str.parse::<i32>() {
    //     Ok(n)    => Ok(2*n),
    //     Err(err) => Err(err),
    // }
    number_str.parse::<i32>().map(|n| 2 * n) // same thing as above
}

fn main() {
    let file_name = "foobar.rs";
    match find(file_name, '.') {
        None    => println!("No such file extension found"),
        Some(i) => println!("File extension: {}", i),
    }

    match double_number("10") {
        Ok(n)    => assert_eq!(n, 20),
        Err(err) => println!("Error: {:?}", err),
    }
}
