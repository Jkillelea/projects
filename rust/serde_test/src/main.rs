use std::fs::File;
use std::io::BufWriter;
use std::io::prelude::*;

#[macro_use]
extern crate serde_derive;
extern crate serde_yaml;

#[derive(Debug, Serialize, Deserialize)]
struct SubStruct {
    val: f64
}

#[derive(Debug, Serialize, Deserialize)]
struct Entry {
    time: i32,
    val: String,
    sub: SubStruct,
}

fn main() {
    let e = Entry {
        time: 12312,
        val: "holy shit".to_string(),
        sub: SubStruct { val: 1.0 }
    };

    let s          = serde_yaml::to_string(&e).unwrap();
    let file       = File::create("test.yaml").unwrap();
    let mut writer = BufWriter::new(file);

    writer.write_all(&s.into_bytes()).unwrap();
    writer.write_all(b"\n").unwrap();
}
