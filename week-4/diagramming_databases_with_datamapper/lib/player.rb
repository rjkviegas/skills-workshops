class Player
  include DataMapper::Resource

  property :id, Serial
  property :name, String

  belongs_to :game, required: false
end