require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts player1 = HumanPlayer.new("Chuck Norris")
puts player2 = HumanPlayer.new("Silvester Stallone")
puts ""

player1.show_state
player2.show_state
puts ""
player1.search_weapon
puts ""
player1.search_health_pack

=begin
while player1.life_points > 0 && player2.life_points > 0 
    puts "Voici l'état de chaque joueurs :"
    player1.show_state
    player2.show_state
    puts ""
    puts "Passons à la phase d'attaque :"
    player1.attacks(player2)
    if player1.life_points <= 0 && player2.life_points <= 0
        puts "Je suis mort."
        puts "C'était cool :)"
        break
    else
    
    puts ""
    puts "OH ! #{player2.name} se relève et attaque !"
    player2.attacks(player1)
    puts ""
    puts "--------------------------------------------"
    puts ""
    end

end
=end
