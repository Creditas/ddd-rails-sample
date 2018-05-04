module Web
  module Controllers
    class OrdersController < ApplicationController
      def index
        render json: { id: 1, name: 'jhon' }
      end
    end
  end
end
