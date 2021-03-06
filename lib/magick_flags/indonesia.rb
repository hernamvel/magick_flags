require "magick_flags/version"
require 'RMagick'
include Magick

module MagickFlags

  class Indonesia < MagickFlags::Base
    
    def self.draw
      image = Image.new(@@width,@@height)
      gc = Magick::Draw.new
      gc.fill('white')
      gc.rectangle(0, 0, @@width, @@height * 0.5)
      gc.fill('red')
      gc.rectangle(0, @@height * 0.5, @@width, @@height)
      gc.draw(image)
      image
    end
  end
end
