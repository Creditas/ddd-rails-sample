Rails.application.routes.draw do
  scope module: 'web' do
    scope module: 'controllers' do
      resources :orders, only: [:index]
    end
  end
end
