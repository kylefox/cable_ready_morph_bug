Rails.application.routes.draw do
  root to: 'home#index'
  get :image, to: 'home#image'
  post :update, to: 'home#update'
end
