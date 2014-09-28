require "magick_flags/version"
require 'RMagick'
include Magick

module MagickFlags

  class CostaRica < MagickFlags::Base
    
    def self.draw
      image = Image.new(@@width,@@height)
      gc = Magick::Draw.new
      gc.fill('white')
      gc.rectangle(0, 0, @@width, @@height)
      gc.fill('blue')
      gc.rectangle(0, 0, @@width, @@height * 0.2)
      gc.rectangle(0, @@height * 0.8, @@width, @@height)
      gc.fill('red')
      gc.rectangle(0, @@height * 0.35, @@width, @@height * 0.65)
      gc.draw(image)
      image
    end
  end
end
