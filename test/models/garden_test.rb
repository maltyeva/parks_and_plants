require 'test_helper'

class GardenTest < ActiveSupport::TestCase

  def setup
    @garden = gardens(:valid)
  end


  test "is a valid garden" do
    # garden.valid? == true
    assert @garden.valid?
  end

  test "valid garden has a name" do
    @garden.name = nil
    refute @garden.valid?, "garden must have a name"
    # garden.valid? != true
  end

  test "garden has many plants" do
    assert_equal 2, @garden.plants.size, "garden should have plants "
  end
end
