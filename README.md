# Why do we need this gem

  Normally apps store and retrieve data from redis, However this might land us in trouble if we don't have seperate instance for DEV mode and Test mode. As the Redis values in the Dev mode will be overridden by the test mode if the key matches.

  So to avoid this, I have created this gem. This gem creates a seperate instance of the redis-server on port 6666

# RedisRspec

  This gem will create a redis-server for rspec on port #6666

## Installation

Add this line to your application's Gemfile:

    gem 'redis_rspec'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install redis_rspec

## How to use this
  Add this to the spec_helper
  
    `require 'redis_rspec'`

## Things that this gem does.
  1. Uses default config to create the redis test server.
  2. Now in your specs you will be able to access the redis at `Redis.curent`.
  3. It will auto-clean the redis on each spec run.
  4. Shuts the redis-server after completion of suite.

## TODO:
  Add an option to pass the redis.conf as well

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
