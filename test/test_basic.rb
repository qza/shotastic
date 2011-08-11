require "test/unit"
require "yaml"

class TestBasics < Test::Unit::TestCase

  def test_configuration_presence
    script_name = YAML.load_file('./config.yml')['config']['script_name']
    assert(!script_name.nil?, "Configure main project script")
  end
end