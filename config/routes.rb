Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  #get 'interns/index'
  #get 'ambassadors/index'
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products


  # Example resource route with options:
  resources :interns do
    get "index.html" => "interns#index"
    post "index.html" => "interns#index"
  end
  resources :ambassadors do
    get "index.html" => "ambassadors#index"
    post "index.html" => "ambassadors#index"
  end

   resources :lands do
    get "index.html" => "lands#index"
    put "index.html" => "lands#index"
  end
     #post "index.html" => "lands#index"
    #get "index.html" => "lands#index"
   root 'lands#index'
  #
  #     collection do
  #       get 'sold'
  #     end
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
