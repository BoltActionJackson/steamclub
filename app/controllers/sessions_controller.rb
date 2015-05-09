class SessionsController < ApplicationController
  include WsHandler
  
  def create
    
    if user = Usuario.from_omniauth(env["omniauth.auth"])
      status = GetPlayerBans(user.steamid)['players'][0]
      
      if status['CommunityBanned'] == false and status['VACBanned'] == false and status['EconomyBan'] = 'none' 
        session[:usuario_id] = user.id 
        redirect_to root_path
      else
        redirect_to root_path, alert: "Existem limitações na sua conta Steam que infelizmente inviabilizam a usar o SteamClub"
      end
      
    else
      redirect_to root_path, alert: "Problema na autenticação do usuario"
    end  
     
  end

  def destroy
    session[:usuario_id] = nil
    redirect_to root_path 
  end

end
