class Pub

  attr_accessor :pub_name, :till, :stock

  def initialize(pub_name, till, stock)
    @pub_name = pub_name
    @till = till
    @stock = stock
  end

  def increase_till(amount)
    @till += amount
  end

  def find_by_name(name)

  end


  def remove_from_stock(name)
    found_drink = find_by_name(name)
    @stock.delete(found_drink)
    return found_drink
  end

end
