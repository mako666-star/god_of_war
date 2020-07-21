require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "                                                              ----------------------------------------"
puts "                                                              |         Bonjour les gens :) !        |"
puts "                                                              | Bienvenue dans le TROU DU MONDE      |"
puts "                                                              | Le but : SURVIVRE :)                 |"
puts "                                                              | Ps : n'hésitez pas à faire un petit  |"
puts "                                                              | tour dans notre boutique souvenir ;) |"
puts "                                                              ----------------------------------------"

puts ""
puts ""

puts "On va maintenant te demander de créer ton personnage :"
enter_name = gets.chomp
human = HumanPlayer.new(enter_name)
puts ""

puts human.show_state
puts ""
puts "Tu es maintenant prêt..."
puts ""
arr_play = []

player1 = Player.new("Chuck Norris")
arr_play << player1
player2 = Player.new("Silvester Stallone")
arr_play << player2


while human.life_points > 0 && (player1.life_points > 0 and player2.life_points > 0)
    puts "Voici la merde dans laquelle tu es :"
    
    puts ""
    if player1.life_points > 0 && player1.life_points > 0
        puts player1.show_state
        puts player2.show_state
    elsif player1.life_points < 0
        puts player2.show_state
    elsif player2.life_points < 0
        puts player1.show_state
    end
    puts ""
    
    puts "Quelle action veux-tu effectuer ?"
    puts "a - chercher une arme (je choisirais l'autre proposition perso)"
    puts "s - chercher à se soigner (pas la meilleure option)"
    rop = gets.chomp.to_s
    if rop == "a"
        puts human.search_weapon
    elsif rop == "s"
        puts human.search_health_pack
    end
    puts ""
    puts human.show_state

    puts ""
    puts "          --------------------            "
    puts ""
    
    puts "Attaquer un joueur en vue :"
    puts "0 - #{player1.name} a #{player1.life_points} points de vie"
    puts "1 - #{player2.name} a #{player2.life_points} points de vie"
    rip = gets.chomp.to_i
    if rip == 0
        puts human.attacks(player1)
    elsif rip == 1
        puts human.attacks(player2)
    end
    STDIN.getch
    puts "" 
    print player1.show_state; player2.show_state
    STDIN.getch

    puts ""
    puts "          --------------------            "
    puts ""
    puts "Les autres joueurs attaquent !!!"

    arr_play.each do |player|
        if player.life_points > 0
            player.attacks(human)
        end
    end
    puts human.show_state
    puts ""
    puts "          --------------------            "
    puts ""
end



puts "La partie est finie... (suspense insoutenable)"
STDIN.getch
puts "..."
STDIN.getch
puts "..."
STDIN.getch
puts "..."
STDIN.getch
if human.life_points == 0 || human.life_points > 0 
    puts "T'es nul, LOOSER ! Va manger ta merde, GROSSE MERDE que tu es ! OUHOUH :[]"
    puts "Ps : Tu as perdu"
elsif combattant1.life_points == 0 || combattant1.life_points > 0 && combattant2.life_points == 0 || combattant2.life_points > 0
    puts "WOOWWWOOOW !!!! T'as gagné !! T'es incroyable !! T'es le plus grand génie de l'humanité !!"
    puts "Je peux vous baiser les pieds grand maître ? Ayez si vous le voulez bien, la gentillesse de me donner une réponse par oui ou par non"
    puts "Oui = 1"
    puts "Non = 2"
    rep = gets.chomp.to_i
    if rep == 1 
        return "T'es chelou, t'as vraiment cru que j'étais sérieux ?"
    else
        return "Je le savais, j'ai toujours cru en toi bro (c'était un test évidemment)"
    end 
end
puts "QUE LA FORCE SOIT AVEC CERTAIN D'ENTRE VOUS !"
