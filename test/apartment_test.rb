require 'minitest/autorun'
require './lib/apartment.rb'

class ApartmentTest < MiniTest::Test
  def setup
    @a1 = Apartment.new({number: "A1",
                        monthly_rent: 1200,
                        bathrooms: 1,
                        bedrooms: 1})
  end

  def test_it_exists
    assert_instance_of Apartment, @a1
  end
end
