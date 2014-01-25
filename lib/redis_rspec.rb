require 'rspec/core'
require "redis_rspec/version"

module RedisRspec
  class Setup
    def self.setup_redis_for_rspec
      RSpec::configure do |config|
        config.before(:suite) do
          system "redis-server --port 6666 --dir ./tmp/ --daemonize yes"
          Redis.current = Redis.new(:port => 6666)
          sleep 2 # This will wait for the redis to start
          Redis.current.flushall
        end

        config.after(:suite) do
          Redis.current.shutdown
        end

        config.after(:each) do
          Redis.current.flushall
        end
      end
    end
  end
end

RedisRspec::Setup.setup_redis_for_rspec
