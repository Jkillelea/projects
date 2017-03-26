use std::ops::Deref;

struct DerefExample<T> {
    value: T,
}

impl<T> Deref for DerefExample<T> {
    type Target = T;

    fn deref(&self) -> &T {
        &self.value
    }
}

fn main() {
    let x = DerefExample {value: 'a'};
    assert_eq!('a', *x);
}

/*
 * There are cases where this happens automatically. IF there's a function foo(&str) and we call
 * it with foot("String".to_string()), the conversion to &str works just fine
 * Same with foo(RC<&str>) since that has derefrencing implmented already
 */
