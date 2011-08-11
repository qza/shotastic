require "test/unit"
require "yaml"
require "./test_helper"

class TestBasics < Test::Unit::TestCase
  def test_configuration_presence
    script_name = TestHelper.get_script_name
    assert(!script_name.nil?, "Configure main project script")
  end

  def test_script_exist
    script_name = TestHelper.get_script_name
    assert(File.exists?("../#{script_name}"), "Create main project cript #{script_name}")
  end

  def test_module_defined
    script_name = TestHelper.get_script_name
    require "../#{script_name}"
    mod_name = script_name.split(".")[0].capitalize
    @mod = Object.const_defined? mod_name
    assert(@mod==true, "There is no module >Shooter")
  end

end