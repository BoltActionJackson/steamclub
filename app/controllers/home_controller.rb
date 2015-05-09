class HomeController < ApplicationController
  include WsHandler
  
  def index

  end
  
  def venda
    user = Usuario.find(session[:usuario_id])
    @itens = GetInventory(user.profile+"/inventory/json/730/2")['rgDescriptions']
  end
  
end
