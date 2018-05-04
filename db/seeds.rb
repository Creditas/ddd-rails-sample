# Create Products
product1 = Domain::Order::Product.new(description: 'Keyboard', value: 15.50)
product1.save

product2 = Domain::Order::Product.new(description: 'Mouse', value: 5.00)
product2.save

product3 = Domain::Order::Product.new(description: 'Monitor', value: 99.90)
product3.save

# Create Order
order_repository = Infra::Repositories::OrderRepository.new

order = Domain::Order::Order.new(customer: 'Jonny')

order.add_product(product1, 1)
order.add_product(product2, 1)
order.add_product(product3, 1)

order_repository.save(order)
