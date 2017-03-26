fn main() {
    let v1 = vec![1, 2, 3];
    let v2 = vec![4, 5, 6];

    let foo = sum_two_vec; // function pointer

    let answer = foo(&v1, &v2); // borrow
    println!("{}", answer);
}

fn sum_vec(v : &Vec<i32>) -> i32 { // takes a reference (borrows) instead of changing ownership
    return v.iter().fold(0, |a, &b| a+b);
}

fn sum_two_vec(v1: &Vec<i32>, v2 : &Vec<i32>) -> i32 {
    let (s1, s2) = (sum_vec(v1), sum_vec(v2));
    s1 + s2 // return
}
