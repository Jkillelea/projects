// Macro metprogramming example
macro_rules! print_all { // declare macro
    ($($x:expr), *) => { // rule takes expressions of pattern expr1, expr2, expr3...
        $( println!("{}", stringify!($x)); )* // convert each to a string literal and print
    }
}

fn main() {
    print_all!(1, 2, 3, if(false) {});
    // 1
    // 2
    // 3
    // if (false) { }
}
