class Customer

  attr_accessor :name, :wallet, :drunkeness, :age, :drinks

  def initialize(name, wallet, drunkeness, age)
    @name = name
    @wallet = wallet
    @drunkeness = drunkeness
    @age = age
    @drinks = []
  end

  def does_wallet_have_funds(amount)
    if amount <= @wallet
      true
    else
      false
    end
  end

  def decrease_wallet(amount)
    @wallet -= amount
  end

  def add_drink(drink)
    @drink.push(drink)
  end

  def buy_drink(name, pub)
    found_drink = pub.remove_from_stock(name)
    add_drink(found_drink)
  end


end
