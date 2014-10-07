require "magick_flags/version"
require 'RMagick'
include Magick

module MagickFlags

  class Bahamas < MagickFlags::Base

    def self.draw
      image = Image.new(@@width,@@height)
      gc = Magick::Draw.new
      gc.fill('#00acc5')
      gc.rectangle(0, 0, @@width, @@height *0.33)
      gc.fill('#f9de5f')
      gc.rectangle(0, @@height *0.33, @@width, @@height * 0.66)
      gc.draw(image)
      gc.fill('#00acc5')
      gc.rectangle(0, @@height * 0.66, @@width, @@height)
      gc.fill('black')
      p = [0, 0, @@width * 0.3, @@height * 0.5, 0, @@height]
      gc.polygon(*p)
      gc.draw(image)
      image
    end
  end
end
