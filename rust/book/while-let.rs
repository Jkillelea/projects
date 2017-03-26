fn main() {
    let mut v = vec![1, 3, 5, 6, 11];
    while let Some(x) = v.pop() {
        println!("{}", x);
    } // None => break;
}
