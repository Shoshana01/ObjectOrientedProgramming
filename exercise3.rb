class Player
   
    def initialize
        @gold_coins = 0
        @health_points = 10
        @lives = 5
    end

    def level_up
        @lives += 1
    end

    def collect_treasure
        @gold_coins += 1
        if @gold_coins % 10 == 0
           level_up 
         end
        end
             
    def do_battle(damage)
        @health_points -= damage
        if @health_points < 1
          @lives -= 1 
          @health_points = 10
        end
        if @lives == 0 
            restart
        end
    end

    def restart
        @gold_coins = 0
        @health_points = 10
        @lives = 5
    end
end

player1 = Player.new
 p player1
 player1.level_up
 p player1
player1.do_battle(16)
p player1
player1.restart
p player1
player1.collect_treasure
p player1