Rails.application.routes.draw do

  resources :reports
  devise_for :admins
  root "pages#index"

  get 'pages/equipo' => 'pages#equipo'
  get "pages/mision" => 'pages#mision'
  get "pages/como_nace" => 'pages#como_nace'
  get 'pages/colaboradores' => 'pages#colaboradores'
  get 'pages/colaboradores_2' => 'pages#colaboradores_2'
  get 'pages/noticias' => 'pages#noticias'
  get 'pages/testimonios' => 'pages#testimonios'
  
  get 'marco_legal/convenio_haya' => 'marco_legal#convenio_haya'
  get 'marco_legal/ley_adopcion' => 'marco_legal#ley_adopcion'
  get 'marco_legal/codigo_infancia' => 'marco_legal#codigo_infancia'
  get 'marco_legal/modificaciones' => 'marco_legal#modificaciones'
  get 'marco_legal/derechos_nino' => 'marco_legal#derechos_nino'
  resources :messages

  get 'pages/rakelita' => 'pages#rakelita'

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
