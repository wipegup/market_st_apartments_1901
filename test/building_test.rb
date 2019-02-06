require 'minitest/autorun'
require './lib/apartment'
require './lib/building'
require './lib/renter'

class BuildingTest < MiniTest::Test

  def setup
    @building = Building.new
    @a1 = Apartment.new({number: "A1",
                          monthly_rent: 1200,
                          bathrooms: 1,
                          bedrooms: 1})
    @b2 = Apartment.new({number: "B2",
                          monthly_rent: 999,
                          bathrooms: 2,
                          bedrooms: 2})
  end

  def test_it_exists
    assert_instance_of Building, @building
  end

  def test_units_initialized_as_empty_array
    assert_equal [], @building.units
  end

end
