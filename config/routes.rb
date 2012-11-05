RspecDojo1::Application.routes.draw do
  resources :users do
    resources :posts
  end

  resources :attachments

  resources :categories do
    resources :posts
  end

  resources :posts

end
