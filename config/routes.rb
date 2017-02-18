Rails.application.routes.draw do

  # constraints subdomain: 'api' do
    # scope 'api' do
        namespace :api do
            scope module: 'v1' do
                resources :products
                resources :categories
            end
        end
    # end
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
