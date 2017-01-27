class AnimalCatalog
  def sound(type)
    if type == :dog
      "woof"
    elsif type == :cat
      "meow"
    elsif type == :bird
      "chirp"
    else
      fail "Unrecognised animal"
    end
  end

  def number_of_legs(type)
    if type == :dog || type == :cat
      4
    elsif type == :bird
      2
    else
      fail "Unrecognised animal"
    end
  end

  def number_of_wings(type)
    if type == :dog || type == :cat
      0
    elsif type == :bird
      2
    else
      fail "Unrecognised animal"
    end
  end
end
