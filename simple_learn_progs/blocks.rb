def callBlock
  puts 'Start of method'
  yield
  yield
  puts 'End of method'
end

callBlock { puts 'In the block - in curly brackets' }

callBlock do
  puts 'In the block - with do/end'
end

puts "### ### ### ### ### ### ### ### ### ###"

def who_says_what
  yield('Dave', 'hello')
  yield('Andy', 'goodbye')
end

who_says_what {|person, phrase| puts "#{person} says #{phrase}"}
  
puts "### ### ### ### ### ### ### ### ### ###"

animals = %w(ant bee cat dog elk)
animals.each {|animal| puts "a animal: #{animal}"}
  
puts "### ### ### ### ### ### ### ### ### ###"
['cat','dog','horse'].each {|name| print name, " " }
puts "---"
5.times {print "*"}
puts "---"
3.upto(6) {|i| print i, " "}
puts "---"
('a'..'e').each {|char| print char, " "}
puts "---"