class Cart
  attr_reader :items   
  
  def initialize
    @items = []
  end
  
  
  def add_product(product)
    current_item = @items.find {|item| item.product == product}
    if current_item
      current_item.increment_quantity
    else
      current_item = CartItem.new(product)
      @items << current_item
    end
  end

  def subtract_product(product)
    current_item = @items.find {|item| item.product == product}
    if current_item && current_item.quantity > 0
      current_item.decrement_quantity
      @items.delete_if  {|x| x.quantity == 0 }
    end
  end

  def total_price
    @items.sum { |item| item.price }
  end
  
end
