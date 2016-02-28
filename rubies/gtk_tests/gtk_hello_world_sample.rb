#!/usr/bin/env ruby

=begin
sample program with ruby gtk3
=end

require "gtk3"

button = Gtk::Button.new("Test Button")
button.signal_connect("clicked") do
  puts "Clicked!"
end

window = Gtk::Window.new
window.signal_connect("delete_event") do
  puts "delete occurred"
  false
end


window.signal_connect("destroy") do
  puts "destroy event occurred"
  Gtk.main_quit
end

window.border_width = 50
window.add(button)
window.show_all

Gtk.main
