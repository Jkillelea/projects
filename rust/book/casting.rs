/*
 * 2 ways to cast in rust. 'as', for safe casts, and 'transmute' for arbitrary ones
 */

// safe cast:
let x: i32 = 5;
let y = x as i64;

/*
 * A cast e as U is also valid in any of the following cases:
 *    e has type T and T and U are any numeric types; numeric-cast
 *    e is a C-like enum (with no data attached to the variants), and U is an integer type; enum-cast
 *    e has type bool or char and U is an integer type; prim-int-cast
 *    e has type u8 and U is char; u8-char-cast
 */
let one = true as u8;
let at_sign = 64 as char;
let two_hundred = -56i8 as u8;

// Perhaps surprisingly, it is safe to cast raw pointers to and from integers, and to cast between
// pointers to different types subject to some constraints. It is only unsafe to dereference the pointer:
let a = 300 as *const char; // `a` is a pointer to location 300.
let b = a as u32;

/*
 * transmutation is dangerous because it can make assumptions about how the underlying data is structured.
 * [u8; 4] as u32 is an example. We're assuming that they're all next to each other in memory and
 * organized show we want
 */
use std::mem;
fn main() {
    unsafe {
        let a = [0u8, 1u8, 0u8, 0u8];
        let b = mem::transmute::<[u8; 4], u32>(a);
        println!("{}", b); // 256
        // Or, more concisely:
        let c: u32 = mem::transmute(a);
        println!("{}", c); // 256
    }
}
