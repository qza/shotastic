module SystemHelper
  
  def self.listen_inputs
    com = 'xev | grep -A2 "^KeyRelease"'
    fhi = IO.popen(com)
    while(line = fhi.gets)
      if !line.index("unknown")
        puts "#{$2}" if line =~ /\(keysym\ (.*?),\ (.*)\)/
      end
    end
  end
  
end

SystemHelper.listen_inputs