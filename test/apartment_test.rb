require 'minitest/autorun'
require './lib/apartment.rb'

class ApartmentTest < MiniTest::Test
  def setup
    @a1 = Apartment.new({number: "A1",
                        monthly_rent: 1200,
                        bathrooms: 1,
                        bedrooms: 1})    
  end
end
