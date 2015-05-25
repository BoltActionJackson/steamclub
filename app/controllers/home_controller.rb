class HomeController < ApplicationController
  include WsHandler
  
  def index

  end
  
  def venda
    user = Usuario.find(session[:usuario_id])
    @itens = GetDescriptions(user.profile)
    @iditens = GetInventory(user.profile)
    
      if params[:commit]
        puts "========"
        puts params
      end
    
  end

  def ofertas
    
    puts GetTradeOffer("467041762") 
  end
  
  def loja

  end
  
end
