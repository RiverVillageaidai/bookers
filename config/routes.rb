Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # アプリケーショントップ画面をルートパスに設定
  root to: 'homes#top'
  resources :books


end
