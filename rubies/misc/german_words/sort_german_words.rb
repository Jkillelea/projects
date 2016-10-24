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


words.sort! # "!" saves back into the array it came from

words.each do |word| #is the same as words.each({|word| puts word})
  puts word
end
