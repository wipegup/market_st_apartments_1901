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
end
