require 'minitest/autorun'
require './lib/renter.rb'

class RenterTest < MiniTest::Test

  def setup
    @renter = Renter.new("Jessie")
  end

  def test_it_exists
    assert_instance_of Renter, @renter
  end

  def test_it_has_name
    assert_equal "Jessie", @renter.name
  end

end
