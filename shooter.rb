require "yaml"

module Shooter
  
  def bootup_shooter
    @shot_prefix = YAML.load_file('../config.yaml')['config']['shot_prefix']
  end
  
  def current_shot_prefix
    @shot_prefix
  end
  
end