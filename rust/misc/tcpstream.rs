use std::net::*;
use std::io::*;

fn main() {
    let listener = TcpListener::bind("127.0.0.1:8080").unwrap();

    for stream in listener.incoming() {
        match stream {
            Ok(mut stream) => {
                let response = b"Hello World!\r\n";
                println!("{:?}", stream);
                stream.write(response).expect("response failed");
                stream.shutdown(Shutdown::Both).unwrap();
            }
            Err(e) => {
                println!("Unable to connect: {:?}", e);
            }
        }
    }
}
