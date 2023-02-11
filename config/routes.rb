Rails.application.routes.draw do
 get '/pins', to: 'pins#index'
 post '/pins', to: 'pins#create'
end
