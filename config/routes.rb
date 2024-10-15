Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # アプリケーショントップ画面をルートパスに設定
  root to: 'homes#top'
  # post 'books' =>'books#create' #postリクエストが `books` というパスに対して送信された場合に、`books`コントローラーの`create`アクションを呼び出す
  resources :books


end
