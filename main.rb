require_relative 'players'
require_relative 'questions'

print "Player 1's name: "
p1_name = gets.chomp
print "Player 2's name: "
p2_name = gets.chomp

player1 = Players.new(p1_name)
player2 = Players.new(p2_name)

current_player = 1


  while (player1.alive? && player2.alive?) do

  player = (current_player == 1) ? player1 : player2

  question = Questions.new()

  puts "-----------NEW TURN-----------"

  puts "#{player.name}: #{question.print}"
 

  answer = gets.chomp.to_i

  if answer == question.answer
  puts "Correct answer"
  puts "#{player1.name} #{player1.lives}/3 lives and #{player2.name} #{player2.lives}/3 lives"
  else
    player.lives -= 1
    puts "WRONG answer"
    puts "#{player1.name} #{player1.lives}/3 lives and #{player2.name} #{player2.lives}/3 lives"
  end
  current_player = (current_player + 1) % 2
end

if player1.lives == 0
		puts "---#{player2.name} wins with #{player2.lives}/3 lives"
elsif player2.lives == 0
		puts "---#{player1.name} wins with #{player1.lives}/3 lives"
end

puts "-----------GAME OVER-----------"







