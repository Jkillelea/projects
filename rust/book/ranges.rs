// there are better things than
for x in 0...10 {
    println!("{}", x);
}

// like
let mut range = 0...10; // Range<i32>
loop {
    match range.next() { // Option<i32>
        Some(x) => {
            println!("{}", x);
        }
        None => {break}
    }
}

// Ranges might not be what you want though.
// Take the example of
let nums = vec![1, 2, 3];

// You might be tempted to write
for i in 0..nums.len() {
    println!("{}", nums[i]);
}

// However, that is strictly worse than
for num in &nums { // num = &i32
    println!("{}", num);
}
