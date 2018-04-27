module Application
  module Order
    class OrderApplication
      def initialize(repositories = {})
        @order_repository = repositories.fetch(:order) { Infra::Repositories::OrderRepository.new }
        @product_repository = repositories.fetch(:product) { Infra::Repositories::ProductRepository.new }
      end

      def create_order(create_order_command)
        order = Domain::Order.new(create_order_command.customer)

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
    end
  end
end