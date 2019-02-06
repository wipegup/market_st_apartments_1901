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

end
