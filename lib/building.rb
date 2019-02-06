class Building
  attr_reader :units
  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    total_rent = @units.sum do |unit|
      unit.monthly_rent
    end
    total_units = @units.length.to_f

    return total_rent / total_units
  end

  def renter_with_highest_rent
    filled_apartments = @units.find_all do |unit|
      unit.renter != nil
    end

    max_rent_of_filled = filled_apartments.max_by do |unit|
      unit.monthly_rent
    end

    return max_rent_of_filled.renter
  end

  def annual_breakdown
    filled_apartments = @units.find_all do |unit|
      unit.renter != nil
    end

    breakdown = {}

    filled_apartments.each do |unit|
      name =  unit.renter.name
      total =  unit.monthly_rent*12
      breakdown[name] = total
    end

    return breakdown
  end
end
