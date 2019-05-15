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

    @customer1 = Customer.new("Bob", 100, 0, 25)
    @customer2 = Customer.new("Margaret", 0, 60, 17)

  end

  def test_pub_created
    assert_equal("The Bull Inn", @pub.pub_name)
  end

  def test_increase_till
    assert_equal(1005, @pub.increase_till(@drink1))
  end

  def test_find_by_name
    assert_equal(@drink2, @pub.find_by_name(@drink2))
  end

  def test_remove_from_stock
    assert_equal(@drink3, @pub.remove_from_stock(@drink3))
    assert_equal([@drink1, @drink2], @pub.stock)
  end

  def test_sell_customer_drink
    @pub.sell_drink_to_customer(@customer1, @drink2)
    assert_equal([@drink1, @drink3], @pub.stock)
    assert_equal([@drink2], @customer1.drinks)
    assert_equal(90, @customer1.wallet)
    assert_equal(1010, @pub.till)
  end

end
