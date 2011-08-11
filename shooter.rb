require "./config_helper"

module Shooter

  attr_accessor :images
  def bootup_shooter
    @images = []
  end

  def capture(id='root', quality='75')
    img = Image.capture {
      self.filename = id
      self.quality = quality
    }
    @images < img
  end

  def persist(thumb=false)
    @i = Dir["*.jpg"].length()
    @images.each_with_index do |e, i|
      t = e.minify
      e.write "#{shot_prefix}_#{@i}.jpg"
      if thumb?
        e.minify.write "#{shot_prefix}_thumb_#{@i}.jpg"
      end
    end
  end

end