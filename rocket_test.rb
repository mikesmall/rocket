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

  # If the rocket is already FLYING, then
  # it can't LIFT OFF (because it already did)

  # lift_off (the METHOD) CAUSES
  # flying (the STATE) to be TRUE

  # (just like in real life!)

  # Two old versions of this test that sucked:
  #-------------------------------------------
  #   def test_lift_off_for_false
  #     @rocket.flying? == false
  #     assert @rocket.flying? == false
  #   end
  #-------------------------------------------
  #   def test_lift_off_for_true
  #     @rocket.flying? == true
  #     assert @rocket.flying? == true
  #   end
  #-------------------------------------------

  # New ones:
  def test_liftoff_was_successful
    @rocket.lift_off # rocket is now flying
    refute @rocket.lift_off
    # can't lift off because it's already flying
  end

  def test_rocket_is_definitely_flying
    @rocket.lift_off # causes rocket to fly
    assert @rocket.flying? == true
  end

  def test_landing
    @rocket.lift_off # get the rocket into the air
    @rocket.land # trying to make it land
    refute @rocket.flying? # 'cause if it landed, it ain't flying
  end

  def test_status
    skip
    @rocket.name = "Timmy"
    @rocket.flying? == true
  end

end#class
