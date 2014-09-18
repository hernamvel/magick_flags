require "magick_flags/version"
require 'RMagick'
include Magick

module MagickFlags

  class England < MagickFlags::Base
    
    def self.draw
      image = Image.new(@@width,@@height)
      gc = Magick::Draw.new
      gc.fill('white')
      gc.rectangle(0, 0, @@width, @@height)
      gc.fill('red')
      gc.rectangle(@@width * 0.47, 0, @@width * 0.53, @@height)
      gc.rectangle(0, @@height * 0.44, @@width, @@height * 0.56)
      gc.draw(image)
      image
    end
  end
end
