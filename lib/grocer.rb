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
  while counter < cart.length
  new_cart_item = find_item_by_name_in_collection(cart[counter][:item], consolidated_cart)
  if new_cart_item != nil
    new_cart_item[:count] += 1
  else
    new_cart_item = {
      :item => cart[counter][:item],
      :price => cart[counter][:price],
      :clearance => cart[counter][:clearance],
      :count => 1
    }
    consolidated_cart << new_cart_item
  end
  counter += 1
end
consolidated_cart
end
