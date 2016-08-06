Rails.application.routes.draw do
	resources :contacts
  get 'index/view'
  get 'search/person'
  post 'search/person'
  root 'index#view'
end
