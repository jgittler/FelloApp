Rails.application.routes.draw do
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
  root to: "landing#indiegogo", as: "indiegogo"

  get "about",    to: "landing#about",    as: "about"
  get "charity",  to: "landing#charity",  as: "charity"
  get "share",    to: "landing#share",    as: "share"
  get "founders", to: "landing#founders", as: "founders"
  get "fello_warranty", to: "landing#fello_warranty", as: "warranty"

  post "lead_email", to: "email#lead_email", as: "lead_email"
  post "email_from_survey", to: "email#email_from_survey", as: "email_from_survey"

  get "charity_question",  to: "survey#charity_question",  as: "charity_question"
  get "warranty_question", to: "survey#warranty_question", as: "warranty_question"
  get "made_question",     to: "survey#made_question",     as: "made_question"
  get "quality_question",  to: "survey#quality_question",  as: "quality_question"
  get "celeb_question",    to: "survey#celeb_question",    as: "celeb_question"
  post "complete_survey",  to: "survey#complete_survey",   as: "complete_survey"

  get "sitemap.xml", to: "sitemap#show", format: "xml", as: "sitemap"
end
