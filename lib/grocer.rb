def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  item_found = nil
  collection.each do |item_entry|
    if item_entry[:item] == name
      item_found = item_entry
    end
  end
  item_found
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated_cart = []
  cart.each do |item_entry|
    item_entry.each do |item, info|
      if consolidated_cart.include?(item)
        consolidated_cart[item][:count] += 1
      else
        consolidated_cart[item] = {
          :price => info[:price]
          :clearance => info[:clearance]
          :count => 1
        }
      end
    end
  end
    
  
end
