Spree::Core::Engine.routes.draw do
  resources :loyalty_points, only: [:index]

  namespace :admin do
    resources :users do
      resources :loyalty_points, only: [:index, :new, :create], controller: 'loyalty_points_transactions' do
        get 'order_transactions/:order_id', action: :order_transactions, on: :collection
      end
    end
  end
end
