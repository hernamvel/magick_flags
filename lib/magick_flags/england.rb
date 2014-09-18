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
      gc.rectangle(0, 0, @@width, @@height * 0.25)
      gc.draw(image)
      gc.rectangle(0, @@height * 0.75, @@width, @@height)
      gc.draw(image)
      image
    end
  end
end
