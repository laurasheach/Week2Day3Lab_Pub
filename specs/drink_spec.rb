require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')
require_relative('../customer.rb')
require_relative('../pub.rb')

class TestDrink < MiniTest::Test

  def setup


    @drink1 = Drink.new("beer", 5, 5)
    @drink2 = Drink.new("wine", 10, 10)
    @drink3 = Drink.new("whisky", 15, 12)

  end

  def test_drink_created
    assert_equal("wine", @drink2.name)
  end

end
