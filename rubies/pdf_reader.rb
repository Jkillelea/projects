#!/usr/bin/env ruby
#Copyright Jacob Killelea
# reads pdfs and outputs the text
# https://github.com/yob/pdf-reader
# in the gem package manager as 'pdf-reader'
require 'pdf-reader'

$PDF_PATH = ARGV[0]

pdf = PDF::Reader.new($PDF_PATH)

text_file = File.open("Test_Data/menu", 'w')

pdf.pages.each do |page|

  # prints to command line
  # print page.fonts
  # print "\n"
  # print page.text
  # print "\n"
  # print page.raw_content

  # writes to file from above
  text_file.puts(page.text)
end


text_file.close
