struct Point {
    x: i32,
    y: i32,
}

struct PointRef<'a> { // structs can cointain mutable pointers though
    x: &'a mut i32,
    y: &'a mut i32,
}

struct Point3d {
    x: i32,
    y: i32,
    z: i32,
}

fn main() {
    let origin = Point {x: 0, y: 0};

    /*
     * Mutability is a property of the binding, not the structure
     */
    let mut point = Point {x:0, y:0};
    point.x = 5;
    // let point = point; // now immutable

    {
        let r = PointRef {x: &mut point.x, y: &mut point.y};
        *r.x = 5; // change the value of what r.x points at
        *r.y = 6; // change the value of what r.y points at
    }

    assert_eq!(5, point.x);
    assert_eq!(6, point.y);

    println!("The origin is at ({}, {})", origin.x, origin.y);
    println!("The point  is at ({}, {})", point.x, point.y);

    let mut point = Point3d {x: 0, y: 0, z: 0};
    point = Point3d {y: 1, ..point}// we want to use the struct point to update all the values in this new one

}
