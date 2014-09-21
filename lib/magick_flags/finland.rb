require "magick_flags/version"
require 'RMagick'
include Magick

module MagickFlags

  class Finland < MagickFlags::Base
    
    def self.draw
      image = Image.new(@@width,@@height)
      gc = Magick::Draw.new
      gc.fill('white')
      gc.rectangle(0, 0, @@width, @@height)
      gc.fill('#18447E')
      gc.rectangle(@@width * 0.25, 0, @@width * 0.4, @@height)
      gc.rectangle(0, @@height * 0.40, @@width, @@height * 0.6)
      gc.draw(image)
      image
    end
  end
end
