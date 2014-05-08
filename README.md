# Sunshine Rails Generators

A set of rails generators which handles typical jobs for client project of sunshine underground.
you can inspect these codes to know how to write custom rails generator gem.

## Installation

Add this line to your application's Gemfile:

    gem 'sunshine_rails_generators'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sunshine_rails_generators

## Usage

To Install assets, controllers and layout for admin panel

    rails g su:admin_install

To scaffold controller and views for admin panel

    rails g su:scaffold_admin_controller CONTROLLER_NAME

## Contributing

1. Fork it ( http://github.com/<my-github-username>/sunshine_rails_generators/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
