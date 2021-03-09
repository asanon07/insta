Rails.application.routes.draw do
  get "inquiry" => "inquiry#index"              # 入力画面
  post "inquiry/confirm" => "inquiry#confirm"   # 確認画面
  post "inquiry/thanks" => "inquiry#thanks"     # 送信完了画面

  get "inquiry/index"
  get "inquiry/confirm"
  get "inquiry/thanks"
  root "home#index"

  get "sessions/new"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "people/add"
  post "people/add", to: "people#create"
  get "people/index"
  get "people", to: "people#index"
  get "people/thanks"

  get "/photo_list/show"
  get "/photo_list", to: "photo_list#show"

  get "/photo_details/:id" => "photo_details#show"

  get "/locations", to: "locations#show"
  get "locations/thanks"
  post "/locations/create", to: "locations#create"

  get "home/index"
  get "home", to: "home#index"

  get "inquiry/question"
  get "inquiry", to: "inquiry#question"

  get "account/account_information"
  get "account", to: "account#account_information"

  get "login/login_form"
  get "login", to: "login#login_form"

  get "registration/registration_form"
  get "registration", to: "registration#registration_form"

  get "details/slide_details"
  get "details", to: "details#slide_details"
end
