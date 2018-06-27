module Infra
  module Repositories
    class OrderRepository < Domain::Order::OrderRepository
      def initialize(model = {})
        @order = model.fetch(:order) { Domain::Order::Order }
      end

      def save(order)
        order.save
      end

      def find_by_id(id)
        @order.find_by(id: id)
      end
    end
  end
end

