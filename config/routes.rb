Rails.application.routes.draw do
  devise_for :users
  resources :parts
  resources :posts

  root :to => "parts#show", :id => 0

  post 'mcsubscribe/subscribe' => 'mcsubscribe#subscribe'

  get 'intro' => 'parts#show', :id => 0

  get 'part-I' => 'parts#show', :id => 1

  get 'part-II' => 'parts#show', :id => 2

  get 'part-III' => 'parts#show', :id => 3

  get 'part-IV' => 'parts#show', :id => 4

  get 'outro' => 'parts#show', :id => 5

  get 'posts' => 'posts#index'

  get 'parts' => 'parts#index'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
end
