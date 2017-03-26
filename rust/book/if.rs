fn main() {
    let x = 5;

    if x == 5 { // standard fare
        println!("x is five.");
    } else if x == 6 {
        println!("x is six");
    } else {
        println!("x is not five or six");
    };

    // this is cooler
    let y = if x == 5 {
        10 // expression - not statement. Returns. Semicolon not required
    } else {
        15
    }; // y : i32

    // let's refactor
    let y = if x == 5 { 10 } else { 15 };
}
