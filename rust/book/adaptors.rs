// Iterator adaptors take an iterator and modify it somehow, producing a new iterator.
let res = (1..100).map(|x| x + 1); // -> (2..101)

// with an infinite number of elements (of which we only take 1..5 inclusive)
for i in (1..).take(5) {
    println!("{}", i);
}

for i in (1..100).filter(|&x| x % 2 == 0) { // must pass a reference because the values aren't returned
    println!("{}", x);                      // (only true or false), so we must retain ownership elsewhere
}


(1..).filter(|&x| x % 2 == 0)
     .filter(|&x| x % 3 == 0)
     .take(5)
     .collect::<Vec<i32>>(); // -> [6, 12, 28. 24, 30]
