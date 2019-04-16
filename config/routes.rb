Rails.application.routes.draw do
    post 'api/shorturl/new', to: 'api#new'
    get 'api/shorturl/:id', to: 'api#show'
end
