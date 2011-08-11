class TestHelper
  
  def self.get_config
    YAML.load_file('../config.yml')['config']['script_name']
  end
  
end