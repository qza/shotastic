module SystemHelper
  
  def self.listen_inputs
    fhi = IO.popen('xev | grep -A2 "^KeyRelease"')
    fhi.each_line(sep=$/) {|line|
      if line =~ /\(keysym\ (.*?),\ (.*)\)/
        puts $2
      end
    }
  end
  
end