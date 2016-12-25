class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # faked current_user method just for example
  def current_user
    User.first
  end

  helper_method :current_user
end
