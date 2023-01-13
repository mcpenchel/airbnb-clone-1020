Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'flats', to: 'flats#index', as: :flats
  # get 'flats/:alguma_variavel', to: 'flats#show', as: :flat
  get 'flats/:id', to: 'flats#show', as: :flat
end
