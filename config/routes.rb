Rails.application.routes.draw do
  get "home/index"
  get "home", to: "home#index"

  get "inquiry/question"
  get "inquiry", to: "inquiry#question"
end
