# Exercise: 14 Reverse Sentence

# Use string methods to reverse the words arrangement in a sentence. Eg: "An apple a day keeps the doctor away" -> "away doctor the keeps day a apple An"

input = ARGV[0]
def rev_string(input)
  input.split(" ").reverse.join(" ")
end
puts rev_string(input)
