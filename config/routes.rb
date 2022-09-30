Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    # nested resource for reviews => *dog_house has many reviews* ✅
    resources :reviews, only: [:show, :index]
  end

  resources :reviews, only: [:show, :index, :create]

  # custom routes
  # get '/dog_houses/:dog_house_id/reviews', to: 'dog_houses#reviews_index' ❌
  # get '/dog_houses/:dog_house_id/reviews/:id', to: 'dog_houses#review' ❌

end
