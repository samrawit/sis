Sis::Application.routes.draw do
<<<<<<< HEAD
 #resources :students 
 get "students/index"
=======
    resources :clearance
  get "students/index"

  get "students/show"
  
  get "students/search"

>>>>>>> 53a8e214d8da48fff61c121e2740ad8404ec9b0e
  get "students/new"
 post "students/save"
  
  get "students/list"
  
  get "students/show"
  
  get "students/edit"
  
  
  get "undergraduate_program/new"
  post "undergraduate_program/Add"
  post"undergraduate_program/create"
  get "undergraduate_program/show_department"
  post "undergraduate_program/create_department"
  post "undergraduate_program/show"
  get "undergraduate_program/show"
  
  get "undergrad_department/new"
  
  get "undergraduate_program/edit"

   get "students/search"
   
  
  
  get "clearance/show"
  get "clearance/new"
  post "clearance/create"
  post "clearance/update"
  get "clearance/edit"
  get "clearance/searchresult"
  get "clearance/search"

<<<<<<< HEAD
  get "students/update"
  
  get "students/delete"
=======
>>>>>>> 53a8e214d8da48fff61c121e2740ad8404ec9b0e
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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
