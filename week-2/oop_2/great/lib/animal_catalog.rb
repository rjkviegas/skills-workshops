require 'dog'
require 'cat'
require 'bird'

# Understands looking up information about animals
class AnimalCatalog

  def sound(type)
    ensure_known_animal(type)
    animal_of_type(type).sound
  end


  def number_of_legs(type)
    ensure_known_animal(type)
    animal_of_type(type).number_of_legs
  end


  def number_of_wings(type)
    ensure_known_animal(type)
    animal_of_type(type).number_of_wings
  end


  private

  ANIMALS = { dog: Dog, cat: Cat, bird: Bird }.freeze

  def ensure_known_animal(type)
    raise "Unrecognised animal" unless ANIMALS.include?(type)
  end

  def animal_of_type(type)
    ANIMALS[type].new
  end
end
