require "minitest/autorun"
require "minitest/rg"
require_relative "./cricket_team"

class TestCricketTeam < MiniTest::Test

    def test_get_team_name()
        team = CricketTeam.new("Tontine Sixers", ["Alan", "Scott", "Ally", "Steve", "James"], "Tony")

        assert_equal("Tontine Sixers", team.get_team_name())
    end

    def test_get_player_list()
        team = CricketTeam.new("Tontine Sixers", ["Alan", "Scott", "Ally", "Steve", "James"], "Tony")

        assert_equal(["Alan", "Scott", "Ally", "Steve", "James"], team.get_player_list())
    end

    def test_get_coach_name()
        team = CricketTeam.new("Tontine Sixers", ["Alan", "Scott", "Ally", "Steve", "James"], "Tony")

        assert_equal("Tony", team.get_coach_name())
    end

    def test_hire_new_coach()
        team = CricketTeam.new("Tontine Sixers", ["Alan", "Scott", "Ally", "Steve", "James"], "Tony")
        team.hire_new_coach("Adam")

        assert_equal("Adam", team.get_coach_name())
    end

    def test_add_new_player()
        team = CricketTeam.new("Tontine Sixers", ["Alan", "Scott", "Ally", "Steve", "James"], "Tony")
        team.add_new_player("Michael")

        assert_equal(["Alan", "Scott", "Ally", "Steve", "James", "Michael"], team.get_player_list())
    end

    def test_check_player()
        team = CricketTeam.new("Tontine Sixers", ["Alan", "Scott", "Ally", "Steve", "James"], "Tony")

        assert_equal(true, team.check_player("Alan"))
        assert_equal(false, team.check_player("Al"))
    end

    def test_log_result()
        team = CricketTeam.new("Tontine Sixers", ["Alan", "Scott", "Ally", "Steve", "James"], "Tony")

        result1 = "win"
        result2 = "loss"

#Has to be in this order, as the loss would still record points to be 1 as has been redefined.
        assert_equal(0, team.log_result(result2))
        assert_equal(1, team.log_result(result1))

    end
end
