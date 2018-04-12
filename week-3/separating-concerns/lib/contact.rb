class Contact
  attr_reader :id, :name, :address, :tel

  def initialize(id, name, address, tel)
    @id = id
    @name = name
    @address = address
    @tel = tel
  end
end
