#[test]
#[should_panic(expected = "assertion failed")]
fn doesnt_work() {
    // don't need to do things here. Test passes if no assertions fail
    assert!(false); // but this will fail
}

// a legimiate function
fn add_two(a: i32) -> i32 {
    a + 2
}

#[test]
fn test_add_two() {
    assert_eq!(4, add_two(2));
}


#[test]
#[ignore] // by default, this test won't run
fn expensive_test() { // can tell cargo to run with `cargo test -- --ignored`
    // do thing that takes forever...
}


// the idiomatic way of doing all this is with test modules.
#[cfg(test)]
mod tests {
    use super::add_two;
    #[test]
    fn test_add_two() {
        assert_eq!(4, add_two(2));
    }
}
