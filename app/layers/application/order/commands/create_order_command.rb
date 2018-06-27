module Application
  module Order
    module Commands
      class CreateOrderCommand
        attr_accessor :customer

        def initialize(customer:)
          @customer = customer
        end
      end
    end
  end
end
