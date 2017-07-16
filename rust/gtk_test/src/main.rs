extern crate gtk;
extern crate gdk_pixbuf;

use gtk::traits::*;
use std::path::Path;
#[macro_use] mod macros;

fn main() {
    gtk::init().unwrap_or_else(|_| panic!("Failed to start GTK!"));

    let builder   = gtk::Builder::new();
    let glade_src = include_str!("../ui.glade");
    let mut args  = ::std::env::args();
    let _         = args.next(); // skip program name

    builder.add_from_string(glade_src).unwrap();

    let window: gtk::Window = builder.get_object("window1").unwrap();
    let button: gtk::Button = builder.get_object("button1").unwrap();
    let image:  gtk::Image  = builder.get_object("image1").unwrap();

    if let Some(path) = args.next() {
        image.set_from_file(Path::new(&path)); // doesn't yet scale but hey!

        let (w, h) = (1, 1);
        if let Some(buf) = image.get_pixbuf() {
            buf.scale_simple(w, h, gdk_pixbuf::InterpType::Nearest).unwrap();
        }
    } else {
        note!("No image path given!");
    }

    button.connect_clicked(|_| {
        gtk::main_quit();
    });

    window.connect_delete_event(move |_, _| { // args are this window and the GTK event
        gtk::main_quit();
        gtk::Inhibit(true)
    });

    window.show_all();
    gtk::main();
}
