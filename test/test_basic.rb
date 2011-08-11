require "test/unit"
require "./config_helper"

class TestBasics < Test::Unit::TestCase
  include ConfigHelper
  
  def test_configuration_presence
    assert_not_nil(script_name, "Configure main project script")
  end

  def test_script_exist
    assert(File.exists?("./#{script_name}"), "Create main project cript #{script_name}")
  end

  def test_module_defined
    require "./#{script_name}"
    mod_name = script_name.split(".")[0].capitalize
    @mod = Object.const_defined? mod_name
    assert(@mod==true, "There is no module >Shooter")
  end

end