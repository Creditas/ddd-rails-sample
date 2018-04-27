module Infra
  module Repositories
    class ProductRepository < Domain::Order::ProductRepository
      def initialize(model = {})
        @product = model.fetch(:product) { Domain::Order::Product }
      end

      def find_by_id(id)
        @product.find_by(id: id)
      end
    end
  end
end
