# Create Products
product1 = Domain::Order::Product.new(description: 'Keyboard', value: 15.50)
product1.save

product2 = Domain::Order::Product.new(description: 'Mouse', value: 5.00)
product2.save

product3 = Domain::Order::Product.new(description: 'Monitor', value: 99.90)
product3.save

# Create Orders
order = Domain::Order::Order.new(customer: 'Jonny')
order.add_product(product1, 1)
order.add_product(product2, 1)
order.save(order)

order = Domain::Order::Order.new(customer: 'Jonny')
order.add_product(product3, 1)
order.save(order)

order = Domain::Order::Order.new(customer: 'Anna')
order.add_product(product1, 2)
order.save(order)

order = Domain::Order::Order.new(customer: 'Matt')
order.add_product(product1, 5)
order.save(order)

order = Domain::Order::Order.new(customer: 'Bob')
order.add_product(product2, 2)
order_repository.save(order)

order = Domain::Order::Order.new(customer: 'Alice')
order.add_product(product2, 10)
order.save(order)
