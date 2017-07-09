class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, unless: :json_request?

  def authenticate_user!
    authenticate_user_from_token!
    super
  end

  def authenticate_user_from_token!
    User.find_by_authentication_token(user_token)
  end

  def user_token
    request.headers['X-AUTH-TOKEN'].presence || params['auth_token'].presence
  end

  protected

  def json_request?
    request.format.json?
  end
end
