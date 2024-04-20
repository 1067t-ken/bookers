Rails.application.routes.draw do
  root 'home#top'
  resources :books 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'home#top' 
  get 'start' =>  'books#index'
end
