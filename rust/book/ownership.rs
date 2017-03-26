// ownership is whack

fn main() {
    let v = vec![1, 2, 3];
    let v2 = v; // reassign
    println!("v[0] is {}", v[0]); // fails - we've moved the values to a new binding
    take(v); // moved values
    // also can't use v past here even if it hadn't been reassigned to v2
}

fn take(v : Vec<i32>) {
    // not important
}

fn foo() {
    let v = vec![1, 2, 3]; // allocates dynamically
} // goes out of scope and all memory is deallocated here
