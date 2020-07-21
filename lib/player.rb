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
        damn_daniel = player.compute_damage
        puts "Il lui inflige #{damn_daniel}"
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
