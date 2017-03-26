/*
 * what is an object implements two different traits with the same function name?
 */
trait Foo {
    fn f(&self);
}
trait Bar {
    fn f(&self);
}

struct Baz;

impl Foo for Baz {
    fn f(&self) { println!("Baz’s impl of Foo"); }
}

impl Bar for Baz {
    fn f(&self) { println!("Baz’s impl of Bar"); }
}

let b = Baz;
// calling b.f() would be an error!

// we need different syntax!
Foo::f(&b); // works
Bar::f(&b); // works

// can also type out the longhand:
<Baz as Foo>::f(&b);
