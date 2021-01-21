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
    new_cart.each do |item|
      if index[:item] != new_cart[item]
        new_cart << index[:item]
      elsif index[:item] == new_cart[item]
        cart[:count] += 1 
      end 
    end 
  end 
  cart
end


  