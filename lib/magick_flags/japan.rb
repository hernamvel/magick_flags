require "magick_flags/version"
require 'RMagick'
include Magick

module MagickFlags

  class Japan < MagickFlags::Base
    
    def self.draw
      image = Image.new(@@width,@@height)
      gc = Magick::Draw.new
      gc.fill('white')
      gc.rectangle(0, 0, @@width, @@height)
      gc.fill('red')
      gc.circle(@@width/2, @@height/2, @@width/2, @@height/4)
      gc.draw(image)
      image
    end
  end
end
