require "magick_flags/version"
require 'RMagick'
include Magick

module MagickFlags

  class Denmark < MagickFlags::Base
    
    def self.draw
      image = Image.new(@@width,@@height)
      gc = Magick::Draw.new
      gc.fill('red')
      gc.rectangle(0, 0, @@width, @@height)
      gc.fill('white')
      gc.rectangle(@@width * 0.30, 0, @@width * 0.35, @@height)
      gc.rectangle(0, @@height * 0.44, @@width, @@height * 0.56)
      gc.draw(image)
      image
    end
  end
end
