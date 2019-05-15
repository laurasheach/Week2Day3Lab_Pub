class Pub

  attr_accessor :pub_name, :till, :stock

  def initialize(pub_name, till, stock)
    @pub_name = pub_name
    @till = till
    @stock = stock
  end

  def increase_till(amount)
    @till += amount.price
  end

  def find_by_name(name)
    for drink in @stock
      if drink == name
        return drink
      end
    end
    return "Sorry, we don't have that drink."
  end

  def remove_from_stock(name)
    found_drink = find_by_name(name)
    @stock.delete(found_drink)
    return found_drink
  end

  def sell_drink_to_customer(customer, drink)
    found_drink = remove_from_stock(drink)
    customer.add_drink(found_drink)
    customer.decrease_wallet(found_drink)
    increase_till(drink)
  end


end
