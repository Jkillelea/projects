#![crate_type = "staticlib"] //  The valid values are rlib, lib, staticlib, and dylib (from stackoverflow)

#[no_mangle]
pub fn print_test() {
  println!("This is a test (call from C?)");

}
