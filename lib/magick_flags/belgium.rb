require "magick_flags/version"
require 'RMagick'
include Magick

module MagickFlags

  class Belgium < MagickFlags::Base

    def self.draw
      image = Image.new(@@width,@@height)
      gc = Magick::Draw.new
      gc.fill('black')
      gc.rectangle(0, 0, @@width * 0.33, @@height)
      gc.fill('yellow')
      gc.rectangle(@@width * 0.33, 0, @@width * 0.66, @@height)
      gc.fill('red')
      gc.rectangle(@@width * 0.66, 0, @@width, @@height)
      gc.draw(image)
      image
    end
  end
end
