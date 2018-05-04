module Web
  module Controllers
    class OrdersController < ApplicationController
      def create_order
        command = Application::Order::Commands::CreateOrderCommand.new(customer: params.dig(:customer))
        Application::Order::OrderApplication.new.create_order(command)

        head :ok
      end

      def add_product
        require 'pry'; binding.pry
        command = Application::Order::Commands::AddProductCommand.new(
            product_id: params.dig(:product_id),
            order_id: params.dig(:order_id),
            quantity: params.dig(:quantity)
        )
        Application::Order::OrderApplication.new.add_product(command)

        head :ok
      end

      def change_product_quantity
        command = Application::Order::Commands::ChangeProductQuantityCommand.new(
            product_id: params.dig(:product_id),
            order_id: params.dig(:order_id),
            quantity: params.dig(:quantity)
        )
        Application::Order::OrderApplication.new.change_product_quantity(command)

        head :ok
      end

      def remove_product
        command = Application::Order::Commands::RemoveProductCommand.new(
            product_id: params.dig(:product_id),
            order_id: params.dig(:order_id)
        )
        Application::Order::OrderApplication.new.remove_product(command)

        head :ok
      end
    end
  end
end
