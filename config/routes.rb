Rails.application.routes.draw do
  resources :books, :except => [:index, :create, :new]
  root :to => 'books#top'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
end
