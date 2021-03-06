Finanzplan::Application.routes.draw do


  resources :contact_messages
  resources :finanzpositions
  

  resources :finanzens


  resources :finanzens
 get "finanzens/index"
  get "finanzens/new"
  get "finanzpositions/index"
  get "impressum/index"	
  get "finanzposition/auswertung"

  get "home/index"

  get "public/index"
  
  root :to => "home#index"
  get "contact_us/view1"
  

  ActiveAdmin.routes(self)

  resources :finanzens
  resources :finanzpositions	
  resources :contact_messages
  devise_for :users

  devise_for :users, :skip => [:registrations]
  
   def after_sign_in_path_for(resource)
        root :to => "home#index"
    end
  
  def after_edit_user_registration_path_for(resource)
        root :to => "home#index"
    end
  def after_create_finanzen(resource) 
	root :to => "finanzposition#index"
end


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
