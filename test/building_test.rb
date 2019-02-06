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

    @spencer = Renter.new("Spencer")
    @jessie = Renter.new("Jessie")
  end

  def test_it_exists
    assert_instance_of Building, @building
  end

  def test_units_initialized_as_empty_array
    assert_equal [], @building.units
  end

  def test_it_can_add_units
    @building.add_unit(@a1)
    @building.add_unit(@b2)

    assert_equal [@a1,@b2], @building.units
  end

  def test_average_rent_calculation
    @building.add_unit(@a1)
    @building.add_unit(@b2)

    assert_equal 1099.5, @building.average_rent
  end

  def test_renter_with_highest_rent_works_with_partially_filled_building
    @b2.add_renter(@spencer)
    @building.add_unit(@a1)
    @building.add_unit(@b2)

    assert_equal @spencer, @building.renter_with_highest_rent
  end

  def test_renter_with_highest_rent_works_with_filled_building
    @a1.add_renter(@jessie)
    @b2.add_renter(@spencer)
    @building.add_unit(@a1)
    @building.add_unit(@b2)

    assert_equal @jessie, @building.renter_with_highest_rent

  end
end
