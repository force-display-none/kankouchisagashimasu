Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'prefectures#index'
  get '/regions/region_id/prefectures/prefecture_id/areas/area_id/spots/spot_id/spot_images/admin_index' => 'spot_images#admin_index', as: :spot_images_admin_index
  get '/regions/region_id/prefectures/prefecture_id/areas/area_id/spots/spot_id/spot_reviews/spot_review_id/spot_review_images/admin_index' => 'spot_review_images#admin_index', as: :spot_review_images_admin_index
  get '/users/sign_up_top' => 'users#sign_up_top', as: :sign_up_top
  get '/users/:id/my_like_images' => 'users#my_like_images', as: :users_my_like_images
  get '/spots/:id/map' => 'spots#map', as: :map
  get '/spots/:id/create_spot_guest_likes' => 'spot_likes#create_by_guest', as: :create_spot_guest_likes
  get '/spots/:id/destroy_spot_guest_likes' => 'spot_likes#delete_by_guest', as: :destroy_spot_guest_likes
  get '/spots/:id/destroy_spot_remote_ip_likes' => 'spot_likes#delete_by_remote_ip', as: :destroy_spot_remote_ip_likes
  get '/prefectures/:id/search' => 'prefectures#search', as: :search
  get 'search', to: 'areas#show'

  resources :regions, only: [:show, :index]
  resources :prefectures, only: [:show, :index]
  resources :areas, only: [:show, :index]
  resources :spots, only: [:new, :create, :show, :edit, :update, :destroy]do
    resource :spot_wants, only: [:create, :destroy]
    resource :spot_wents, only: [:create, :destroy]
    resource :spot_likes, only: [:create, :destroy]
    resources :spot_images, only: [:create, :index, :destroy]
    resources :spot_reviews, only: [:create, :index, :update, :destroy]do
      resource :spot_review_helpfuls, only: [:create, :destroy]
      resources :spot_review_images, only: [:create, :index, :destroy]do
        resource :likes, only: [:create, :destroy]
      end
    end
  end
  resources :users, only: [:show, :index, :update, :destroy]

end