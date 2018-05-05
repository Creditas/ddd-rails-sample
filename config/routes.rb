Rails.application.routes.draw do
  scope module: 'web' do
    scope module: 'controllers' do
      # Commands
      post 'orders', to: 'orders#create_order'
      patch 'orders/:order_id/products', to: 'orders#add_product'
      patch 'orders/:order_id/products/:product_id', to: 'orders#change_product_quantity'
      delete 'orders/:order_id/products/:product_id', to: 'orders#remove_product'

      # Queries
      get 'orders/:order_id', to: 'orders#find_order_by_id'
      get 'orders', to: 'orders#find_last_orders',
        :constraints => lambda { |request| request.params.key?(:last_orders) }
      get 'orders', to: 'orders#find_orders_per_users',
        :constraints => lambda { |request| request.params.key?(:orders_per_users) }
    end
  end
end
