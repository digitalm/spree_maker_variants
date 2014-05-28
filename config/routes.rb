Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
      resources :products do
        get 'add_on_maker_variants' => 'add_on_maker_variants#index'
        resources :variants do
          resources :add_on_maker_variants do
        end
      end
    end
  end
end
