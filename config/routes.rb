Rails.application.routes.draw do
  scope module: 'web' do
    scope module: 'controllers' do
      post 'orders', to: 'orders#create_order'
      patch 'orders/:order_id/products', to: 'orders#add_product'
      patch 'orders/:order_id/products/:product_id', to: 'orders#change_product_quantity'
      delete 'orders/:order_id/products/:product_id', to: 'orders#remove_product'
    end
  end
end
