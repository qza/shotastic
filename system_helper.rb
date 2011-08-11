module SystemHelper
  
  def self.listen_inputs
    fhi = IO.popen('xev | grep -A2 --line-buffered "^KeyRelease"')
    fhi.each_line(sep=$/) {|line|
      if line =~ /\(keysym\ (.*?),\ (.*)\)/
        puts $2
      end
    }
  end
  
end

SystemHelper.listen_inputs