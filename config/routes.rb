Rails.application.routes.draw do
  resources :organizational_structures
  resources :video_galleries
  resources :image_galleries
  resources :albums
  resources :agendas
  resources :residents

  resources :dues_residents do
      get :autocomplete_resident_name, :on => :collection
  end

  resources :residents

  root 'residents#index'

end
