require "rails_helper"

RSpec.feature "Person", type: :feature do
  before do
    @person = Person.create(
      name: "TEST_USER",
      age: 40,
      email: "test@example.com",
      password: "password1234",
    )
  end
  it "新規登録する" do
    visit root_path
    visit people_add_path
    fill_in "name", with: "太郎"
    fill_in "age", with: 40
    fill_in "email", with: "tarou@example.com"
    fill_in "password", with: "tarou1234"
    click_button "登録"
    expect(page).to have_content "ユーザ登録ありがとうございました"
  end

  it "ログインする" do
    visit root_path
    visit login_path
    fill_in "email", with: "hogehoge@gmail.com"
    fill_in "password", with: "hogehoge"
    click_button "ログイン"
    expect(page).to have_button "logout-button"
  end
end
