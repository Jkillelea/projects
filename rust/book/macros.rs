fn main() {
    // rust actually has macros and uses them a bunch

    let x = vec![1, 2, 3]; // is a common macros

    // it's the same as:
    let x: Vec<u32> = {
        let mut temp_vec = Vec::new();
        temp_vec.push(1);
        temp_vec.push(2);
        temp_vec.push(3);
        temp_vec
    };

    // implementing this macro:
    macro_rules! vec {
        ($($x:expr), *) => {
            {
                let mut temp_vec = Vec::new();
                $(
                    temp_vec.push($x);
                )*
                temp_vec
            }
        };
    }

    // okay wow
    macro_rules! foo {
        (x => $e:expr) => (println!("mode X: {}", $e));
        (y => $e:expr) => (println!("mode Y: {}", $e));
    }
    foo!(x => 3); // "mode X: 3"
    foo!(z => 1); // error, no rules for token 'z'


    macro_rules! o_O {
        (
            $( $x:expr; [ $( $y:expr ),* ] );*
        ) => {
            &[ $($( $x + $y ),*),* ]
        }
    }

    let a: &[i32] = o_O!(10; [1, 2, 3];
                         20; [4, 5, 6]);

    assert_eq!(a, [11, 12, 13, 24, 25, 26]);
}
