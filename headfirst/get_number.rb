puts 'Welcome to "Get My Number!"'
print "What's your name? "
input = gets
puts "Welcome, #{input.chomp}"

puts 'Number between 1 and 100'
target = rand(100) + 1
num_guesses = 0
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "#{10-num_guesses} guesses left."
  guess = gets.to_i
  num_guesses += 1
  if guess < target
    puts 'LOW'
  elsif guess > target
    puts 'HIGH'
  else
    puts "in #{num_guesses}"
    guessed_it = true
  end
end

unless guessed_it
  puts 'No'
end

