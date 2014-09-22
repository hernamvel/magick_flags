require "magick_flags/version"
require 'RMagick'
include Magick

module MagickFlags

  class Switzerland < MagickFlags::Base
    
    def self.draw
      image = Image.new(@@width,@@height)
      gc = Magick::Draw.new
      gc.fill('red')
      gc.rectangle(0, 0, @@width, @@height)
      gc.fill('white')
      gc.rectangle(@@width * 0.45, @@height * 0.2, @@width * 0.55, @@height * 0.8)
      gc.rectangle(@@width * 0.35, @@height * 0.4, @@width * 0.65, @@height * 0.6)

      gc.draw(image)
      image
    end
  end
end
