require "test/unit"
require '../shooter.rb'
require "./test_helper"

class TestShooter < Test::Unit::TestCase
include Shooter
  
  def test_shooter_bootup
    bootup_shooter
    assert(current_shot_prefix == TestHelper.get_shot_prefix, "Shooter should load file prefix")
  end
  
end