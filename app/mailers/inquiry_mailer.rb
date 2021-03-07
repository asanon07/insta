class InquiryMailer < ActionMailer::Base
  # これ入れないと送れいない。
  default from: "info@gmail.com"

  def received_email(inquiry)
    @inquiry = inquiry

    # 下記一行は問い合わせ者にメールする
    # mail(to: @inquiry.email, subject: "お問い合わせありがとうございます。")

    # 下記一行は管理者にメールする
    mail(to: ENV["TOMAIL"], subject: "インスタ映えるん利用者から問い合わせがありました")
  end
end
