// dynamic growable array

fn main() {
    let mut v = vec![1, 2, 3, 4, 5]; // v : Vec<i32>
    // let v = vec![0; 10]; // ten zeroes

    println!("The third element of v is {}", v[2]); // must be indexed with unsigned int

    // println!("item 7 is {}", vec[7]); // PANIC

    match v.get(7) { // handles out of bounds access
        Some(x) => println!("item 7 is {}", x),
        None    => println!("Item 7 does not exist")
    }

    // iterations through vectors
    for i in &v {
        println!("a reference to {}", i);
    }

    for i in &mut v { // only works since v is mutable already
        println!("A mutable reference to {}", i);
    }

    for i in v { // can't use vector again - ownership has been changed and then it goes out of scope
        println!("take ownership of the vector and its element {}", i);
    }
}
