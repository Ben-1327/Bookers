Rails.application.routes.draw do
  resource :books, :except => [:index, :create, :new, :show, :edit, :destroy]
  root :to => 'books#top'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
