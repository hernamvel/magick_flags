require "magick_flags/version"
require 'RMagick'
include Magick

module MagickFlags

  class Chile < MagickFlags::Base
    
    def self.draw
      image = Image.new(@@width,@@height)
      gc = Magick::Draw.new
      gc.fill('white')
      gc.rectangle(0, 0, @@width, @@height * 0.5)
      gc.fill('red')
      gc.rectangle(0, @@height * 0.5, @@width, @@height)
      gc.fill('blue')
      gc.rectangle(0, 0, @@width *0.25, @@height * 0.5)
      gc.draw(image)
      # Flag's white star
      gc.fill('white')
      p = [@@width *0.125, @@height * 0.1, @@width * 0.15, @@height * 0.2, @@width * 0.2, @@height * 0.2,
           @@width * 0.16, @@height * 0.25, @@width * 0.175, @@height * 0.375, @@width *0.125, @@height * 0.285,
           @@width * 0.075, @@height * 0.375, @@width * 0.09, @@height * 0.25, @@width * 0.05, @@height * 0.2,
           @@width * 0.1, @@height * 0.2 ]
      gc.polygon(*p)
      gc.draw(image)
      image
    end
  end
end
