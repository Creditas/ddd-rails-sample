module Infra
  module QueryObjects
    class OrdersQuery < Domain::Order::Order
      class << self
        def order_by_id(id)
          self
            .includes(:items)
            .find_by(id: id)
        end

        def last_orders
          self
            .order('created_at desc')
            .limit(10)
        end

        def orders_per_users
          self
            .all
            .group(:customer)
            .count
            .map do |key, value|
              {
                user: key,
                quantity: value
              }
            end
        end
      end
    end
  end
end

