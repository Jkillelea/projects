use std::thread;

let handle = thread::spawn(|| {
    println!("This is a thread");
});
println!("{}", handle.join().unwrap());

let x = 1;
thread::spawn(move || { // need to move contexts (add a new stack frame, copy x)
   println!("{}", x);
});

// Rust prevents data races through its normal rules
use std::thread;
use std::time::Duration;
use std::sync::{Arc, Mutex};

let mut data = Arc::new(Mutex::new(vec![1, 2, 3]));
for i in 0..3 {
    let data = data.clone(); // new owned reference

    thread::spawn(move || {
        let mut data = data.lock().unwrap();
        data[0] += i;
    });
}

thread::sleep(Duration::from_milis(50));
