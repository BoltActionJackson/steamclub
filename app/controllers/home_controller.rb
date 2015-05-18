class HomeController < ApplicationController
  include WsHandler
  
  def index

  end
  
  def venda
    user = Usuario.find(session[:usuario_id])
    @itens = GetInventory(user.profile)
  end

  def ofertas
    
    puts GetTradeOffer("467041762") 
  end
  
  def loja

  end
  
end
