require 'minitest/autorun'
require './lib/apartment'
require './lib/building'
require './lib/renter'

class BuildingTest < MiniTest::Test

  def setup
    @building = Building.new
  end

  def test_it_exists
    assert_instance_of Building, @building
  end

  def test_units_initialized_as_empty_array
    assert_equal [], @building.units
  end

end
