require "./config_helper"

module Shooter

  attr_accessor :images
  def bootup_shooter
    @images = []
  end

  def capture(id='root', quality='75')
    img = Magick::Image.capture {
      self.filename = id
      self.quality = quality
    }
    @images < img
  end

  def persist(thumb=false)
    @images.each_with_index do |e, i|
      e.write "#{shot_prefix}_#{i}.jpg"
      if thumb?
        e.minify.write "#{shot_prefix}_thumb_#{i}.jpg"
      end
    end
  end

end