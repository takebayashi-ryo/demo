Rails.application.routes.draw do
  #投稿一覧ページ
  get "posts/index" => "posts#index"
  #トップページ
  get "/" => "home#top"
  #会社概要ページ
  get "about" => "home#about"
  #業務内容ページ
  get "contents" => "home#contents"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
