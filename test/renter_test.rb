require 'minitest/autorun'
require 'lib/renter.rb'

class RenterTest < MiniTest::Test

  def setup
    @renter = Renter.new("Jessie")
  end

  
end
