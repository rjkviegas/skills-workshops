class DryCleaner
  def pick_up_clothes(output = STDOUT)
    van = hire_unbroken_van
    output.puts "Your clothes will be picked up soon!"
  end

  private

  def hire_unbroken_van
    van = Van.hire
    raise "Van engine is broken" if van.engine.broken?
    van
  end
end
