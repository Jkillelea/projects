#![crate_type = "dylib"]

#[no_mangle]
pub fn print_test() {
  println!("This is a test (call from C?)");

}
