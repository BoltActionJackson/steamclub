class Usuario < ActiveRecord::Base
  
  def self.from_omniauth(auth)
    
   if !(user = Usuario.find_by_steamid(auth.uid))
      user = Usuario.new
   end
   
      user.steamid = auth.uid
      user.nome = auth.info.name
      user.nickname = auth.info.nickname
      user.image = auth.info.image
      user.profile = auth.info.urls.Profile
      user.status = 'ativo'
      
      user.save!
      user
  end
  
  
end
