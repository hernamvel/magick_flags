require "magick_flags/version"
require 'RMagick'
include Magick

module MagickFlags

  class Yemen < MagickFlags::Base

    def self.draw
      image = Image.new(@@width,@@height)
      gc = Magick::Draw.new
      gc.fill('red')
      gc.rectangle(0, 0, @@width, @@height *0.33)
      gc.fill('white')
      gc.rectangle(0, @@height *0.33, @@width, @@height * 0.66)
      gc.draw(image)
      gc.fill('black')
      gc.rectangle(0, @@height * 0.66, @@width, @@height)
      gc.draw(image)
      image
    end
  end
end
