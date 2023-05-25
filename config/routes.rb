# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'companies/index', to: 'companies#index', as: 'index_company'
  get 'companies/show/:id', to: 'companies#show', as: 'show_company'
  delete 'companies/destroy/:id', to: 'companies#destroy', as: 'delete_company'
  post 'companies/create', to: 'companies#create', as: 'create_company'
  put 'companies/update/:id', to: 'companies#update', as: 'update_company'
end
