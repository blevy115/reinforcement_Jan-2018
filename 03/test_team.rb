require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new('patriots', 'nfl', ['Tom Brady', 'Rob Gronkowski'])
  end

  def test_to_hash
    hash = @team.to_hash
    assert_equal(hash[:team_name], 'patriots')
    assert_equal(hash[:level], 'nfl')
    assert_equal(hash[:points], 0)
  end

end
