Rails.application.routes.draw do
  resources :organizational_structures
  resources :video_galleries
  resources :image_galleries
  resources :albums
  resources :agendas
  resources :residents
  resources :dues_residents
  resources :residents

  root 'residents#index'

end
