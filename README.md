# World-Postalcodes [![Gem Version](https://badge.fury.io/rb/world-postalcodes.png)](https://badge.fury.io/rb/world-postalcodes.svg)

A simple gem to search city, state, state code, latitude, longitude, timezone and country details from postal code only for USA, India & Japan. All details has been stored in yaml file. We will be adding postal code details for more countries soon.

Note: You need around 45MB free space in your system or server to use this gem.

## Installation

Add this line to your application's Gemfile:

    gem 'world-postalcodes'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install world-postalcodes

## Usage

```ruby

require "world_postalcodes"

WorldPostalcodes.search("04574")
# => {:city=>"Washington", :state=>"Maine", :state_code=>"ME", :latitude=>44.2693, :longitude=>-69.3842, :time_zone=>"America/New_York", :country=>"United States"}

WorldPostalcodes.search('382481')
# => {:city=>"Ahmedabad", :state=>"GUJARAT", :post_office=>"Nirnaynagar", :taluka_name=>"Ahmadabad, :district_name=>"Ahmedabad", :head_office=>"Gandhinagar (Gujarat)", :sub_office=>"NA", :country=>"India"}

WorldPostalcodes.search("441-3106")
# => {:city=>"Toyohashishi", :state=>"Aichiken", :latitude=>34.7246, :longitude=>137.476, :country=>"Japan"}

# First run will take a while, as the yaml has to be loaded.
```

If you are using Rails, you can load the yaml file on app startup for production and staging.
```ruby
# config/initializers/load_pin_codes.rb
WorldPostalcodes.load unless Rails.env.development?
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
