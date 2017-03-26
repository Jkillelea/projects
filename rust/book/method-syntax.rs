struct Circle {
    x: f64,
    y: f64,
    radius: f64,
}

impl Circle {
    fn area(&self) -> f64 { // calc area - called with circle_instance.area()
        std::f64::consts::PI * (self.radius * self.radius)
    }
    fn grow(&self, increment: f64) -> Circle { // return new circle by value
        Circle { x: self.x, y: self.y, radius: self.radius + increment }
    }

    // these all handle the data differently
    fn reference(&self) {
       println!("taking self by reference!");
    }
    fn mutable_reference(&mut self) {
       println!("taking self by mutable reference!");
    }
    fn takes_ownership(self) {
       println!("taking ownership of self!");
    }

    fn new(x: f64, y: f64, radius: f64) -> Circle { // doesn't take self - called with Circle::new()
        Circle {
            x: x,
            y: y,
            radius: radius,
        }
    }
}

struct CircleBuilder {
    x: f64,
    y: f64,
    radius: f64,
}

impl CircleBuilder {
    fn new() -> CircleBuilder {
        CircleBuilder {x: 0.0, y: 0.0, radius: 1.0}
    }
    fn x(&mut self, coordinate: f64) -> &mut CircleBuilder {
        self.x = coordinate;
        self
    }
    fn y(&mut self, coordinate: f64) -> &mut CircleBuilder {
        self.y = coordinate;
        self
    }
    fn radius(&mut self, radius: f64) -> &mut CircleBuilder {
        self.radius = radius;
        self
    }
    fn finalize(&self) -> Circle {
        Circle { x: self.x, y: self.y, radius: self.radius }
    }
}


fn main() {
    let c = Circle { x: 0.0, y: 0.0, radius: 2.0 };
    println!("{}", c.area());

    let c = CircleBuilder::new()
                            .x(1.0)
                            .y(2.0)
                            .radius(2.0)
                            .finalize();
    println!("area: {}", c.area());
    println!("x: {}", c.x);
    println!("y: {}", c.y);
}
