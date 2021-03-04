module SessionsHelper

  # 渡されたユーザーでログインする
  def log_in(people)
    session[:people_id] = people.id
  end

  # 現在ログイン中のユーザーを返す (いる場合)
  def current_people
    if session[:people_id]
      #@current_user = @current_user || User.find_by(id: session[:user_id])と同じ意味
      @current_people ||= Person.find_by(id: session[:people_id])
    end
  end

  #受け取ったユーザーがログイン中のユーザーと一致すればtrueを返す
  def current_people?(people)
    people == current_people
  end

  # ユーザーがログインしていればtrue、その他ならfalseを返す
  def logged_in?
    !current_people.nil?
  end

  # 現在のユーザーをログアウトする
  def log_out
    session.delete(:people_id)
    @current_people = nil
  end
end
