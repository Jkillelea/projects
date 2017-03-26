fn main() {
    /*
     * Match guards can be introduced with 'if'
     */
    enum OptionalInt {
        Value(i32),
        Missing,
    }

    let x = OptionalInt::Value(5);
    match x {
        OptionalInt::Value(i) if i > 5 => println!("Got an int larger than 5"),
        OptionalInt::Value(..) => println!("got an int"),
        OptionalInt::Missing => println!("no such luck"),
    }
}
