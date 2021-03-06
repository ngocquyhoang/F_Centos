Rails.application.routes.draw do

  namespace :admin do
    resources :blogs
  end
  
  mount Ckeditor::Engine => '/ckeditor'
  resources :user_logs

  devise_for :users, controllers: { sessions: "users/sessions" }
  
  post 'update' => 'detail#update'

  post 'contact' => 'contact#contact'

  get 'home' => 'home#index'

  get 'contact' => 'contact#index', as: :contact_index

  # get 'add-new-blog' => 'admin#add_new_blog'
  
  get 'blog-control' => 'admin#blog_control'
  
  get 'message' => 'admin#message'

  get 'user-log' => 'admin#user_log'

  get 'user-details' => 'admin#user_details'

  get 'admin' => 'admin#index'

  get 'about' => 'about#index'

  get 'service' => 'setting#index'

  get 'blog' => 'blog#index'

  get 'post' => 'blog#post'

  get 'detail' => 'detail#index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
