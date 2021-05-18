class Salestax
  def calculate_sales_tax(item, cost_price)
    (item == "book" || item == "food" || item == "medicinae") ? 0 : (cost_price * 0.10)
  end

  def calculate_import_duty(cost_price)
    cost_price * 0.05
  end
end

def display_list(item_hash)
  puts ("Name\tPrice\tStax\tIDuty\tTotal ")
  length = 1
  while (length <= item_hash.length) do
    item_hash[length].each do |i|
      print ("#{i}\t")
    end
    puts
    length += 1
  end
end

input = 'y'
obj1 = Salestax.new
item_hash = Hash.new(Array.new)
k=1
total_bill = 0

while input == 'y' do
  puts("Enter item Name")
  item_name = gets.chomp
  puts("Is item Imported Yes/No?")
  import = gets.chomp
  puts("Is item  Exempted from sales tax?")
  exempt_sales_tax = gets.chomp
  puts("Enter item Price")
  item_price = gets.to_f

  if exempt_sales_tax == 'yes'
    sales_tax =0
  else
    sales_tax = obj1.calculate_sales_tax(item_name, item_price)
  end

  if import == 'yes'
    import_duty = obj1.calculate_import_duty(item_price)
  else
    import_duty = 0
  end
  total_price = item_price + sales_tax + import_duty
  total_bill += total_price
  item_hash[k] =  item_name, item_price, sales_tax, import_duty, total_price  
  k+=1
  puts(" Do you want to add more items to your list(y/n)")
  input = gets.chomp
end
display_list(item_hash)
puts("Total_bill = #{total_bill.round}")
