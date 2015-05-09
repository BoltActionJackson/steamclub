class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  
  before_filter :authorize_user!
  
  def authorize_user!
    @usuario = Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end
  
end
