class Player
    attr_accessor :name, :life_points
    
    def initialize(enter_name)
        @name = enter_name
        @life_points = 10
    end
      
    damn_daniel = 0
    def show_state
        
        puts "#{@name} a #{@life_points} points de vie"
    end

    def attacks(player)
        puts "Le joueur #{self.name} attaque le joueur #{player.name}"
        puts ""
        STDIN.getch
        damn_daniel = player.compute_damage
        puts "Il lui inflige #{damn_daniel}"
        puts ""
        player.gets_damage(damn_daniel)
    end    

    def compute_damage 
        return rand(1..6)
    end
        
    def gets_damage(damn_daniel)
        @life_points = @life_points - damn_daniel
            
        if @life_points <= 0
            puts "#{name} a été tué !!!! :o"
        else 
            puts "Tout va bien, je suis invincible"
        end
    
    end  
end

class HumanPlayer < Player
    attr_accessor :weapon_level

    def initialize(enter_name)
        @weapon_level = 1
        @life_points = 100
        @name = enter_name
    end
    def show_state
        puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
    end
    
    search_weapon = 0
    def search_weapon
        weap = rand(1..6)
        puts "Tu as trouvé une arme de niveau #{weap}"
        if weap > @weapon_level
            puts "WOW ! GG ! Ta nouvelle arme est super forte, prend là !"
            @weapon_level = weap
            puts "Et voici le niveau de ton arme : #{@weapon_level}"
        else 
            puts "Elle est nulle :("
        end
    end
    def compute_damage 
        return rand(1..6)*@weapon_level
    end  
    def search_health_pack
        healt = rand(1..6)
        
        if healt == 1 
            puts "T'as rien trouvé mais au moins le Hax n'as pas joué !"
        elsif healt == 2 || healt > 2 && healt < 5 || healt == 5
            puts "Bravo ! Tu as trouvé un shield du démon qui tue qui augmente ta vie de 50 points !"
            @life_points = @life_points + 50

            if life_points > 100
                unwant = unwant.to_i
                unwant = @life_points - 100
                @life_points = @life_points - unwant
            end                   

        elsif healt == 6
            puts "Incredable ! Une potion de Leroy Merlin, le génie de la construction de cabanes à Jardin, boit-la et c'est cool (+ 80 HP)"
            @life_points = @life_points + 80
            if life_points > 100
                unwant = unwant.to_i
                unwant = @life_points - 100
                @life_points = @life_points - unwant
            end    
        end
    end
end
