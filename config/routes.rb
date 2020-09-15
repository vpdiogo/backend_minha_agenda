Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :tarefas
    end
  end
 
  # constraints subdomain: 'api' do
  #   scope module: 'api' do
  #     namespace :v1 do
  #       resources :tarefas
  #     end
  #   end
  # end
end