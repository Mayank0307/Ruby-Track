def highlight(s,s1)
  str=s.gsub("#{s1}","(#{s1})").gsub(/#{s1.capitalize}/, "(#{s1.capitalize})")
  puts str
  str.downcase.scan("#{s1}").count
end
input = ARGV
s = input[0] 
s1 = input[1]
puts highlight(s,s1)
