Rails.application.routes.draw do
  get  'home/index'
  post 'home/send_shock'
  root 'home#index'
end
