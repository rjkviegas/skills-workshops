require 'data_mapper'

DataMapper.setup(:default,
                 "postgres://localhost/databases_1_starter")

class Person
  include DataMapper::Resource

  property :id, Serial
  property :name, String

  def print_name
    puts name
  end
end

DataMapper.finalize
DataMapper.auto_migrate!

timmy = Person.create(name: "timmy")
timmy.print_name
timmy.name = "tim"
timmy.save

tim = Person.get(1)
tim.print_name

#---------------------
# Person table
#
# id | name
# ---|-----
# 0  | Isla
