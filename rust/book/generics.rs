/*
 * Sometimes, when writing a function or data type, we may want it to work for multiple types of
 * arguments. In Rust, we can do this with generics. Generics are called ‘parametric polymorphism’ in type
 * theory which means that they are types or functions that have multiple forms (‘poly’ is multiple,
 * ‘morph’ is form) over a given parameter (‘parametric’).
 */

fn main() {
    // enum Option<T> {
    //     Some(T),
    //     None,
    // }
    let x: Option<i32> = Some(5);

    /*
     * Consider Result<T, E> from the standard library
     * It returns the result type if something succeeded,
     * otherwise it can return an error type
     */
    enum Result<T, E> {
        Ok(T),
        Error(E),
    }

    // Generic functions look similar
    fn takes_anything<T>(x: T) {
        // do something with x
    }
    fn takes_two_of_the_same_things<T>(x:T, y: T) {}
    fn takes_two_things<T, U>(x: T, y: U) {}

    // So do genreic structs
    struct Point<T> {
        x: T,
        y: T,
    }
    let int_origin = Point { x: 0, y: 0 };
    let float_origin = Point { x: 0.0, y: 0.0 };

    // And generic implementaitons
    impl<T> Point<T> {
        fn swap(&mut self) {
            std::mem::swap(&mut self.x, &mut self.y);
        }
    }
}
