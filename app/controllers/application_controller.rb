class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_login
  HMAC_SECRET = 'my$ecretK3y'

  def check_login
    if !user_signed_in?
      redirect_to users_login_path
    end
  end

  def current_user
    token = cookies[:user_token] rescue nil
    return nil if token.nil?
    decoded_token = JWT.decode token, HMAC_SECRET, true, { :algorithm => 'HS256' } rescue nil
    return nil if decoded_token.nil?
    payload = decoded_token.first
    u = User.find(payload["user_id"]) rescue nil
    return u
  end

  def user_signed_in?
    !current_user.nil?
  end

end
