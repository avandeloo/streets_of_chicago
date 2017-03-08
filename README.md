# StreetsOfChicago

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/streets_of_chicago`. To experiment with that code, run `bin/console` for an interactive prompt.

Wrapper for querying the Chicago Government API for Chicago streets.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'streets_of_chicago'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install streets_of_chicago

## Usage

Make sure to require the gem as shown below:

```ruby
require 'streets_of_chicago'
```

To retrieve all streets from Chicago and their information, use the following example code:

```ruby
streets = StreetsOfChicago::Street.all
```

To search through the streets and their information for a particular term, use the following example code:

```ruby
mccormick_streets = StreetsOfChicago::Street.search("mccormick")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/streets_of_chicago. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

