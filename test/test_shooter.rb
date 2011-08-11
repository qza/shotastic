require 'test/unit'
require './shooter.rb'
require './config_helper'

class TestShooter < Test::Unit::TestCase
include Shooter, ConfigHelper
  
  def test_images_init
    bootup_shooter
    assert_not_nil(images, 'Images should be initialized.')
  end

end