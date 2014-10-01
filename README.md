# MagickFlags

TODO: Draw the flags of the countries of the world using rmagick

## Installation

Add this line to your application's Gemfile:

    gem 'magick_flags'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install magick_flags

## Usage

Just call the draw method for the country you want to paint its flag:

    require 'magick_flags'
    image = MagickFlags::Colombia.draw
    image.write('colombia.png')

The draw method will give you a rmagic Draw class, so you can do whatever you want with it.  For example in a rails controller that respond to http://whatever/rails controller/colombia.png

    format.png do
       send_data image.to_blob, :filename => 'colombia.png',
          :disposition => 'inline',
          :type => 'image/png'
    end

The first flag I made was the Colombian flag (my home country... and yes, because it was very easy to do).  Feel free to contibute.

For a list of the available flags, please see the lib/countries.rb file.
   
## Contributing

1. Fork it ( https://github.com/hernamvel/magick_flags/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

Please no cheating.  Only use the rmagick functions.  No external images allowed :)

