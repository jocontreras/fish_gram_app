class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken

  protect_from_forgery with: :exception, unless: :json_request?

  protected

  def json_request?
    request.format.json?
  end
end
