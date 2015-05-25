class ApplicationController < ActionController::Base
  
  before_filter :authorize_user!
  
  def authorize_user!
    @usuario = Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end
  
end
