struct Foo<'a> { // define lifetime of things inside Foo (and Foo itself)
    x : &'a i32,
}
impl<'a> Foo<'a> {           // function has same lifetime as struct
    fn x(&self) -> &'a i32 { // returns an i32 reference with the same lifetime
        self.x               // this means that the return value lasts as long as the function parameters
    }
}

fn main() {
    let y = &5;
    let f = Foo {x: y};

    println!("x is: {}", f.x()); // we can safely get the value from x() because we know it's in scope
}
