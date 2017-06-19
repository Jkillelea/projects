macro_rules! note {
    ($x: tt) => ({println!("[NOTE]: {}", $x);});
}

macro_rules! warn {
    ($x: tt) => ({println!("[[WARNING]]: {}", $x);});
}
