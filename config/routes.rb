Rails.application.routes.draw do
  get 'home' => 'pages#home'
  get 'page-clicked' => 'pages#page_clicked'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
