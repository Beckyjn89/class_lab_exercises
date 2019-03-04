require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < Minitest::Test
  def test_get_team_name
    sports_team = Team.new("Wildcats", ["Bob", "Fred"], "Davey")
    assert_equal("Wildcats", sports_team.team_name)
  end

  def test_coach_new_name
    sports_team = Team.new("Wildcats", ["Bob", "Fred"], "Davey")
    sports_team.coach = "Jimmy"
    assert_equal("Jimmy", sports_team.coach)
  end

  def test_add_new_player
    sports_team = Team.new("Wildcats", ["Bob", "Fred"], "Davey")
    sports_team.add_new_player("Harold")
    assert_equal(3, sports_team.players.length)
  end
  def test_does_player_exist
    sports_team = Team.new("Wildcats", ["Bob", "Fred"], "Davey")
    assert_equal(false, sports_team.check_player("barbie"))
  end
  def test_won_or_lost
    sports_team = Team.new("Wildcats", ["Bob", "Fred"], "Davey")
    sports_team.outcome("win")
    assert_equal(3, sports_team.points)
  end
end
