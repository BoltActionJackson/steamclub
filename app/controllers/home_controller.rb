class HomeController < ApplicationController
  include WsHandler
  
  def index

  end
  
  def venda
    user = Usuario.find(session[:usuario_id])
    @itens = GetDescriptions(user.profile)
    @iditens = GetInventory(user.profile)
    
      if params[:commit]
        
        result = venderitem(params[:iditem].chomp,user.steamid)
        
          if result['tradeofferid']
           Trade.create(usuario: user, tradeid: result['tradeofferid'], preco: params[:preco], itemid: params[:iditem], obs: params[:obs],status: 'pendente',
           destaque: params[:destaque], name: params[:name], image: params[:image],quality: params[:quality], rarity: params[:rarity],exterior: params[:exterior])
           
          end
        
      end
    
  end

  def ofertas
    
    puts GetTradeOffer("467041762") 
  end
  
  def loja

  end
  
end
