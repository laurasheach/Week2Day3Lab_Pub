require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../drink.rb')

class TestPub < MiniTest::Test

  def setup

    @drink1 = Drink.new("beer", 5, 5, 10)
    @drink2 = Drink.new("wine", 10, 10, 15)
    @drink3 = Drink.new("whisky", 15, 12, 10)

    @pub = Pub.new("The Bull Inn", 1000, [@drink1, @drink2, @drink3])

  end

  def test_pub_created
    assert_equal("The Bull Inn", @pub.pub_name)
  end

  def test_increase_till
    assert_equal(1005, @pub.increase_till(5))
  end

  def sell_customer_drink
    
  end

end
