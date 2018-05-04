module Application
  module Order
    module Commands
      class RemoveProductCommand
        attr_accessor :order_id, :product_id

        def initialize(order_id:, product_id:)
          @order_id = order_id
          @product_id = product_id
        end
      end
    end
  end
end
