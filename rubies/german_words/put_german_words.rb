#!/usr/bin/env ruby
#Copyright Jacob Killelea
# puts each word to a file

words = [
  "anfangen",
  "beginnen",
  "haben",
  "lesen",
  "sein",
  "verstehen",
  "helfen",
  "aussteigen",
  "bekommen",
  "werden",
  "nehmen",
  "sprechen",
  "ziehen",
  "laufen",
  "einladen",
  "fahren",
  "heissen",
  "schlafen",
  "stehen",
  "bleiben",
  "sitzen",
  "mitbringen",
  "finden",
  "kommen",
  "schreiben",
  "wissen",
  "essen",
  "sterben",
  "geben",
  "gehen",
  "liegen",
  "sehen",
  "trinken",
  "denken",
  "vergessen",
]

words.sort!

# open the filename as writeable and write each word to it
File.open(ARGV[0], 'w') do |file|

    words.each do |word|
      file.puts word
    end

file.close
end
