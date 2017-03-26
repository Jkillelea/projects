fn main() {
    /*
     * Often, a simple if/else isn’t enough, because you have more than two possible options. Also, conditions
     * can get quite complex. Rust has a keyword, match, that allows you to replace complicated if/else
     * groupings with something more powerful.
     */
    let x = 5;
    match x { // i32
        1 => println!("one!"),
        2 => println!("two!"),
        3 => println!("three!"),
        4 => println!("four!"),
        5 => println!("five!"),
        _ => println!("something else!"),
    };
    println!("{}", x);
    /*
     * One of the many advantages of match is it enforces ‘exhaustiveness checking’. For example if we remove
     * the last arm with the underscore _, the compiler will give us an error
     */

    /*
     * Matching the variants of an enum
     */
    enum Message {
        Quit,
        ChangeColor(i32, i32, i32),
        Move {x: i32, y: i32},
        Write(String),
    }

    fn quit() { /*...*/ }
    fn change_color(r: i32, b: i32, g: i32) { /*...*/ }
    fn move_cursor(x: i32, y: i32) { /*...*/ }

    fn process_message(msg: Message) {
        match msg {
            Message::Quit => quit(),
            Message::ChangeColor(r, g, b) => change_color(r, g, b),
            Message::Move{x: x, y: y} => move_cursor(x, y),
            Message::Write(s) => println!("{}", s),
        };
    }
}
