Rails.application.routes.draw do
  resource :books, :except => [:index, :create, :new, :show]
  root :to => 'books#top'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show'
end
