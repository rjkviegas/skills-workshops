require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-rspec'

DataMapper.setup(:default, "postgres://localhost/diagramming_databases_test")

# DataMapper::Logger.new($stdout, :debug)

require './lib/player'
require './lib/game'

DataMapper.finalize
DataMapper.auto_migrate!

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.include(DataMapper::Matchers)

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
