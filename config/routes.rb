Rails.application.routes.draw do
  
  post 'trajets/reservation'
  get '/membres/connexion'

  post '/membres/login'

  get '/trajets/search'

  post '/trajets/recherche'

  get 'villes/index'

  get 'villes/new'

  post 'villes/create'

  get 'villes/edit'

  get 'villes/update'

  get 'villes/delete'

  get 'avis/index'

  get 'avis/new'

  post 'avis/create'

  get 'avis/show'

  get 'avis/edit'

  post 'avis/update'

  get 'avis/delete'

  get 'trajets/index'

  get 'trajets/new'

  post 'trajets/create'

  get 'trajets/show'

  get 'trajets/edit'

  get 'trajets/update'

  get 'trajets/delete'

  get 'voitures/index'

  get 'voitures/new'

  post 'voitures/create'

  get 'voitures/show'

  get 'voitures/edit'

  get 'voitures/update'

  get 'voitures/delete'

  get 'membres/index'

  get 'membres/new'

  post 'membres/create'

  get 'membres/show'

  get 'membres/edit'

  get 'membres/update'

  get 'membres/delete'

  get 'conducteurs/index'

  get 'conducteurs/new'

  post 'conducteurs/create'

  get 'conducteurs/show'

  get 'conducteurs/edit'

  patch 'conducteurs/update'

  get 'conducteurs/delete'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'trajets#search'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  resources :conducuteurs
  resources :membres
  resources :avis
  resources :voitures
  resources :trajets
  resources :villes
end
