Rails.application.routes.draw do
  get "people/index"
  get "people", to: "people#index"

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
