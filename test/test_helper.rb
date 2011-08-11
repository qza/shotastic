class TestHelper
  
  def self.get_config
    YAML.load_file('../config.yaml')['config']
  end
  
  def self.get_script_name
    YAML.load_file('../config.yaml')['config']['script_name']
  end
  
  def self.get_shot_prefix
    YAML.load_file('../config.yaml')['config']['shot_prefix']
  end
  
end