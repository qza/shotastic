module SystemHelper
  
  def self.listen_inputs(windowid=nil)
    if !windowid.nil?
      comm = "xev -id #{windowid} | grep -A2 --line-buffered \"^KeyRelease\""
    else
      comm = 'xev | grep -A2 --line-buffered "^KeyRelease"'
    end
    fhi = IO.popen(comm)
    fhi.each_line(sep=$/) do |line|
      if line =~ /\(keysym\ (.*?),\ (.*)\)/
        if block_given?
          yield $2
        else
          puts "PRESSED #{$2}"
        end
      end
    end
  end
  
  def activate_window(windowid=nil)
    system('xdotool search --class firefox windowactivate')
  end

end


SystemHelper.listen_inputs() do |f|
  puts "PRESSED ::: #{f}"
end