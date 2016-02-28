require 'tk'

root = TkRoot.new {title "first example"}

TkLabel.new(root) do
  text 'A sample'
  pack {padx 150; pady 150; side 'left'}
end

Tk.mainloop
