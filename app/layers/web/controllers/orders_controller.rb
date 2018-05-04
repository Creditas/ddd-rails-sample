module Web
  module Controllers
    class OrdersController < ApplicationController
      def index
        render json: { id: 1, name: 'jhon' }
      end

      def create_order
        command = Application::Order::Commands::CreateOrderCommand.new(params.dig(:customer))
        Application::Order::OrderApplication.new.create_order(command)
      end
    end
  end
end
