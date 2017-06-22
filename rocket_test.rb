require "minitest/autorun"
require_relative "rocket"

# assert
# refute

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
  end

  def test_new_name_positive
    @rocket.name=("test")
    assert @rocket.name == "test"
  end

  #testing the negative
  def test_new_name_negative
    @rocket.name=("hello")
    refute @rocket.name == "goodbye"
  end

  def test_new_name_the_old_way
    # arrange
    coolrocket = Rocket.new
    # act
    coolrocket.name = "Derek"
    # assert
    assert_equal(coolrocket.name, "Derek")
  end

  def test_new_colour_positive
    @rocket.colour=("purple")
    assert @rocket.colour == "purple"
  end

  def test_new_colour_negative
    @rocket.colour=("orange")
    refute @rocket.colour == "green"
  end

  def test_colour_as_integer_positive
    @rocket.colour=(3456)
    assert @rocket.colour == 3456
  end

  def test_colour_as_integer_negative
    @rocket.colour=(1234)
    refute @rocket.colour == 5678
  end

  def test_lift_off
    @rocket.flying? == false
    assert @rocket.flying? == false     
  end

end#class
