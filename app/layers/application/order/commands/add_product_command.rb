module Application
  module Order
    module Commands
      class AddProductCommand
        attr_accessor :order_id, :product_id, :quantity

        def initialize(order_id:, product_id:, quantity:)
          @order_id = order_id
          @product_id = product_id
          @quantity = quantity
        end
      end
    end
  end
end
