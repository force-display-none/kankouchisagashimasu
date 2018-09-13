Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'prefectures#index'
  get '/regions/region_id/prefectures/prefecture_id/areas/area_id/spots/:id/show_reviews' => 'spots#show_reviews', as: :spots_show_reviews
  get '/regions/region_id/prefectures/prefecture_id/areas/area_id/spots/spot_id/spot_images/admin_index' => 'spot_images#admin_index', as: :spot_images_admin_index
  get '/regions/region_id/prefectures/prefecture_id/areas/area_id/spots/spot_id/spot_reviews/spot_review_id/spot_review_images/admin_index' => 'spot_review_images#admin_index', as: :spot_review_images_admin_index
  get '/users/:id/my_reviews' => 'users#my_reviews', as: :users_my_reviews
  get '/users/:id/my_helpfuls' => 'users#my_helpfuls', as: :users_my_helpfuls
  get '/users/:id/my_like_images' => 'users#my_like_images', as: :users_my_like_images
  get '/spots/:id/map' => 'spots#map', as: :map
  get '/prefectures/:id/search' => 'prefectures#search', as: :search

  resources :regions, only: [:show, :index]do
  	resources :prefectures, only: [:show, :index]do
  	  resources :areas, only: [:show, :index]

    end
  end
        resources :spots, only: [:new, :create, :show, :edit, :update, :destroy]do
          resource :spot_wants, only: [:create, :destroy]
          resource :spot_wents, only: [:create, :destroy]
          resources :spot_images, only: [:create, :index, :destroy]
          resources :spot_reviews, only: [:create, :index, :update, :destroy]do
            resource :spot_review_helpfuls, only: [:create, :destroy]
            resources :spot_review_images, only: [:create, :index, :destroy]do
              resource :likes, only: [:create, :destroy]
            end
          end
        end


  resources :users, only: [:show, :index, :edit, :update, :destroy]
end
