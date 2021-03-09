require "rails_helper"

RSpec.describe Person, type: :model do
  it "名前と年齢とメールアドレスとパスワードがあれば登録できる" do
    expect(FactoryBot.create(:person)).to be_valid
  end

  it "名前がなければ登録できない" do
    expect(FactoryBot.build(:person, name: "")).to_not be_valid
  end

  it "メールアドレスがなければ登録できない" do
    expect(FactoryBot.build(:person, email: "")).to_not be_valid
  end

  it "年齢がなければ登録できない" do
    expect(FactoryBot.build(:person, age: "")).to_not be_valid
  end

  it "メールアドレスが重複していたら登録できない" do
    user1 = FactoryBot.create(:person, name: "taro", email: "taro@example.com")
    expect(FactoryBot.build(:person, name: "ziro", email: user1.email)).to_not be_valid
  end

  it "パスワードがなければ登録できない" do
    expect(FactoryBot.build(:person, password: "")).to_not be_valid
  end

  it "パスワードが暗号化されているか" do
    user = FactoryBot.create(:person)
    expect(user.password_digest).to_not eq "password"
  end
end
