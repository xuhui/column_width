# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

resources :projects do
  member do
    post 'width'
  end
end
