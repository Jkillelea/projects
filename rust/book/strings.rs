/*
 * To kinds of strings in Rust - &str and String
 */

fn takes_slice(slice: &str) {
    println!("got: {}", slice);
}

fn main() {
    let greeting = "Hello there"; // greeing: &'static str. Statically allocated, immutable
    let mut s = "Hello".to_string(); // mut s: String - heap allocated variable size
    println!("{}", s);

    takes_slice(&s); // Strings coerce into &s with '&'

    s.push_str(", world");
    println!("{s}", s);
}
