Rails.application.routes.draw do
  post "logout" => "users#logout"
  #ログインフォームから送信された値
  post "login" => "users#login"
  #ログインページへのルーティング
  get "login"  => "users#login_form"
  #updateアクションへのルーティング
  post "users/:id/update" => "users#update"
  #editアクションへのルーティング
  get "users/:id/edit" => "users#edit"
  #createアクションへのルーティング
  post "users/create" => "users#create"
  #newアクションへのルーティング
  get "signup" => "users#new"

  get 'users/index'
  #showアクションへのルーティング
  get "users/:id" => "users#show"

  #社員ログインページ
  get "posts/index" => "posts#index"
  #新規投稿画面ページ
  get "posts/new" => "posts#new"
  #個人ユーザーページ
  get "posts/:id" => "posts#show"
  #データを送信するためのルーティング
  post "posts/create" => "posts#create"
  #投稿編集ページ
  get "posts/:id/edit" => "posts#edit"
  #編集フォーム入力内容の受けとり
  post "posts/:id/update" => "posts#update"
  #投稿削除
  post "posts/:id/destroy" => "posts#destroy"



  #投稿一覧ページ
  get "index" => "home#index"
  #トップページ
  get "/" => "home#top"
  #会社概要ページ
  get "about" => "home#about"
  #業務内容ページ
  get "contents" => "home#contents"
 resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
