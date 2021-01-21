require 'pry'

def find_item_by_name_in_collection(name, collection)
  item_found = nil 
  collection.each do |index|
    if index[:item] == name
      item_found = index
   end
  end
  item_found
end 

def consolidate_cart(cart)
  new_cart = []
  cart.each do |index|
    name = index[:item]
   if find_item_by_name_in_collection(name, new_cart)
      index[:count] += 1 
    else 
      index[:count] = 
    else 
      new_cart << index
      new_cart[index][:count] = 1
    end 
  end 
    new_cart
    binding.pry
end


  