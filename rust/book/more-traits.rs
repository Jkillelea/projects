struct UseDefault;
struct OverrideDefault;

trait Foo {
    fn is_valid(&self) -> bool; // must be implemented manually
    fn is_invalid(&self) -> bool { // default implementation
        println!("called default is_invalid");
        !self.is_valid()
    }
}

impl Foo for UseDefault {
    fn is_valid(&self) -> bool {
        println!("called UseDefault.is_valid()");
        true
    }
    // is_invalid implemented by default as !self.is_valid()
}

impl Foo for OverrideDefault {
    fn is_valid(&self) -> bool {
        println!("called OverrideDefault.is_valid()");
        true
    }
    fn is_invalid(&self) -> bool { // override
        println!("called OverrideDefault.is_invalid");
        true
    }
}

#[derive(Debug)] // implement Debug for Potato via macro
struct Potato;

fn main() {
    let uses_default = UseDefault;
    assert!(!uses_default.is_invalid()); // true

    let uses_override = OverrideDefault;
    assert!(uses_override.is_invalid()); // we told it to return true

    println!("{:?}", Potato);
}
