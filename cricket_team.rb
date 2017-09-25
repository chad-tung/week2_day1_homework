class CricketTeam
    def initialize(name, players, coach)
        @name = name
        @players = players
        @coach = coach
        @points = 0
    end

    def get_team_name()
        return @name
    end

    def get_player_list()
        return @players
    end

    def get_coach_name()
        return @coach
    end

    def hire_new_coach(coach_name)
        @coach = coach_name
    end

    def add_new_player(name)
        @players << name
    end

    def check_player(name)
        for player in @players
            if player == name
                return true
            end
        end
        return false
    end

    def log_result(result)
        if result == "win"
            @points += 1
        elsif result == "loss"
            return @points
        end
    end
end
