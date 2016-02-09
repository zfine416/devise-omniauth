Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks",sessions: "users/sessions",registrations: "users/registrations"}
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'users#index'




  #   get 'products/:id' => 'catalog#view'

  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

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
end

#                   Prefix Verb     URI Pattern                            Controller#Action
#         new_user_session GET      /users/sign_in(.:format)               users/sessions#new
#             user_session POST     /users/sign_in(.:format)               users/sessions#create
#     destroy_user_session DELETE   /users/sign_out(.:format)              users/sessions#destroy
#  user_omniauth_authorize GET|POST /users/auth/:provider(.:format)        omniauth_callbacks#passthru {:provider=>/facebook/}
#   user_omniauth_callback GET|POST /users/auth/:action/callback(.:format) omniauth_callbacks#(?-mix:facebook)
#            user_password POST     /users/password(.:format)              devise/passwords#create
#        new_user_password GET      /users/password/new(.:format)          devise/passwords#new
#       edit_user_password GET      /users/password/edit(.:format)         devise/passwords#edit
#                          PATCH    /users/password(.:format)              devise/passwords#update
#                          PUT      /users/password(.:format)              devise/passwords#update
# cancel_user_registration GET      /users/cancel(.:format)                users/registrations#cancel
#        user_registration POST     /users(.:format)                       users/registrations#create
#    new_user_registration GET      /users/sign_up(.:format)               users/registrations#new
#   edit_user_registration GET      /users/edit(.:format)                  users/registrations#edit
#                          PATCH    /users(.:format)                       users/registrations#update
#                          PUT      /users(.:format)                       users/registrations#update
#                          DELETE   /users(.:format)                       users/registrations#destroy
#                     root GET      /                                      users#index

