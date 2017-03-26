/*
 * Hybrid between a tuple and a struct, called a tuple struct (of course).
 */
struct Color(i32, i32, i32);
struct Point(i32, i32, i32);
let black = Color(0, 0, 0);

/*
 * newtype pattern, useful since it's name-distinct
 */
struct Inches(i32);
let length = Inches(10);
let Inches(integer_length) = length;
println!("length is {} inches", integer_length);

/*
 * Unit struct aren't terribly useful on their own but they exist
 */
struct Electron {};
struct Proton;
let x = Electron {};
let y = Proton; // curly braces are optional
