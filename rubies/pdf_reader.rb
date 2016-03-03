#!/usr/bin/env ruby
#Copyright Jacob Killelea
# reads pdfs and outputs the text
require 'pdf-reader'

$PDF_PATH = ARGV[0]

pdf = PDF::Reader.new($PDF_PATH)

text_file = File.open("Test_Data/menu", 'w')

pdf.pages.each do |page|

  # prints to command line
  # puts page.fonts
  # print page.text
  # puts page.raw_content

  # writes to file from above
  text_file.puts(page.text)
end

text_file.close
