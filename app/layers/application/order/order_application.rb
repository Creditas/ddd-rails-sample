module Application
  module Order
    class OrderApplication
      def initialize(repositories = {})
        @order_repository = repositories.fetch(:order) { Infra::Repositories::OrderRepository.new }
        @product_repository = repositories.fetch(:product) { Infra::Repositories::ProductRepository.new }
      end

      def create_order(create_order_command)
        order = Domain::Order::Order.new(create_order_command.customer)

        ActiveRecord::Base.transaction do
          @order_repository.save(order)
        end
      end

      def add_product(add_product_command)
        order = @order_repository.find_by_id(add_product_command.order_id)
        product = @product_repository.find_by_id(add_product_command.product_id)

        ActiveRecord::Base.transaction do
          order.add_product(product, add_product_command.quantity)
          @order_repository.save(order)
        end
      end

      def change_product_quantity(change_product_quantity_command)
        order = @order_repository.find_by_id(change_product_quantity_command.order_id)
        product = @product_repository.find_by_id(change_product_quantity_command.product_id)

        ActiveRecord::Base.transaction do
          order.change_product_quantity(product, change_product_quantity_command.quantity)
          @order_repository.save(order)
        end
      end

      def remove_product(remove_product_command)
        order = @order_repository.find_by_id(remove_product_command.order_id)
        product = @product_repository.find_by_id(remove_product_command.product_id)

        ActiveRecord::Base.transaction do
          order.remove_product(product, remove_product_command.quantity)
          @order_repository.save(order)
        end
      end
    end
  end
end
