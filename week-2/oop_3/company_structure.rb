class Ceo
  def initialize(coo = Coo.new)
    @coo = coo
  end

  def make_company_efficient
    @coo.find_company_savings
  end
end

class Coo
  def initialize(hr_manager)
    @entertainment_budget = 1000
    @hr_manager = hr_manager
  end

  def find_company_savings
    reduce_entertainment_budget
    @hr_manager.reduce_payroll
  end

  private

  def reduce_entertainment_budget
    @entertainment_budget -= 200
  end
end

class HrManager
  def initialize(employees)
    @employees = employees
  end

  def reduce_payroll
    @employees
      .select { |employee| employee.performance < 7 }
      .each(&:fire)
  end
end

class Employee
  def fire
    @fired = true
  end

  def performance
    rand(1..10)
  end
end

employees = [Employee.new, Employee.new]
hr_manager = HrManager.new(employees)
coo = Coo.new(hr_manager)
ceo = Ceo.new(coo)
ceo.make_company_efficient
