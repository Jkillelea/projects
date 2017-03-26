let plus_two = |x| {
    let mut result: i32 = x;
    result += 2;
    result
};
assert_eq!(4, plus_two(2)); // works

let plus_one = |x: i32| -> i32 { x + 1 };
assert_eq!(2, plus_one(1));

fn plus_one_v1(x: i32) -> i32 { x + 1 } // may ways to write the same thing
let plus_one_v2 = |x: i32| -> { x + 1 };
let plus_one_v3 = |x: i32|      x + 1  ;

/*
 * closures also can have the same scope as the surrounding block, or can be different
 */

let num = 5;
let plus_num = |x: i32| x + num; // doesn't change scope, so it borrows the binding.
assert_eq!(10, plus_num(5));

let mut num = 5;
{
    let plus_num = |x: i32| x + num;
}                 // plus_num goes out of scope and the borrow ends
let y = &mut num; // can borrow again

let mut num = 5;
{
    let mut add_num = move |x: i32| num += x; // create a new stack frame and copy num into it
    add_num(5); // add 5 to the new copy
}
assert_eq!(5, num); // old copy retains original value


/*
 * Because closures are just traits objects, '()' are overloadable and the nessecary thingies are
 * implemneted automagically by the rust compiler. SO, CLOSURES ARE JUST ANOTHER TYPE.
 * That means we can take them in functions!
 */

fn call_with_one<F>(some_closure: F) -> i32
    where F: Fn(i32) -> i32 // Fn is a trait object that takes &self. There's also FnMut and FnOnce
{
    some_closure(1)
}

fn call_with_one_v2(some_closure: &Fn(i32) -> i32) -> i32 { // dynamic dispatch version with trait object
    some_closure(1)
}

/*
 * Closures can be returned from functions, but it's tricky. Their lifetime can't be limited by the
 * outside function and they have to either have their own stack frame or not borrow any variables
 * They also have to be of known size.
 */
fn factory() -> Box<Fn(i32)> { // this function satisfies that by returning trait object boxed up
    let num = 5;
    Box::new(move |x| x + num) // we can't borrow num since it doesn't live long enough so we have to
                               // use 'move' to create a new stack frame and copy it in.
}

let f = factory();  // get the closure
let ans = f(1);     // call closure [(x = 1) + (num = 5)]
assert_eq!(6, ans); // works
