/*
 * polymorphism requires some method to figure out which method to use - this is called dispatch
 */

trait Foo {
    fn method(&self) -> String;
}

impl Foo for u8 {
    fn method(&self) -> String { format!("u8: {}", *self) }
}

impl Foo for String {
    fn method(&self) -> String { format!("string: {}", *self) }
}

fn do_something<T: Foo>(x: T) { // T is any type that implements Foo
    x.method();
}

fn dynamic_do_something(x: &Foo) { // takes a trait-object (that is, any type that implements Foo)
    x.method();
}

fn main() {
    let x = 5u8;
    let y = "Hello".to_string();

    do_something(x); // these are statically dispatched - ie : The compiler figures it out
    do_something(y);

    let x = 5u8;
    dynamic_do_something(&x as &Foo); // cast as a trait-object

    let x = "hello".to_string();
    dynamic_do_something(&x); // coerce - same thing as a cast
}
