/*
 * An enum in Rust is a type that represents data that is one of several possible variants. Each variant
 * in the enum can optionally have data associated with it:
 */
enum Message {
    Quit,
    ChangeColor(i32, i32, i32),
    Move {x: i32, y: i32},
    Write(String)
}

/*
 * Enum values are scoped by their type. That allows both of these to work
 */
let x: Message = Message::Move { x: 3, y: 4 };

enum BoardGameTurn {
    Move { squares: i32 },
    Pass,
}
let y: BoardGameTurn = BoardGameTurn::Move { squares: 1 };
/*
 * Both variants are named Move, but since they’re scoped to the name of the enum, they can both be used
 * without conflict.
 */

// Enum constructor can also be used like a function:
let m = Message::Write("Hello, world".to_string());

// Is the same as:
fn foo(x: String) -> Message {
    Message::Write(x)
}
let x = foo("Hello, world".to_string());
