Rails.application.routes.draw do
  get 'home' => 'pages#home'
  get 'button-clicked' => 'pages#button_clicked'
  get 'space-pressed' => 'pages#spacebar_pressed'
  get 'daily-statistics' => 'pages#daily_stats'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
