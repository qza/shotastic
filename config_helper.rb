require "yaml"

module ConfigHelper

  @@config = YAML.load_file('config.yaml')['config']
  
  def script_name
    @@config['script_name']
  end

  def shot_prefix
    @@config['shot_prefix']
  end

end