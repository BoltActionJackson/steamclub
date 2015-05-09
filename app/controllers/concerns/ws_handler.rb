require 'net/http'
module WsHandler
  extend ActiveSupport::Concern
  
  def GetPlayerBans(steamid)
    url = "https://api.steampowered.com/ISteamUser/GetPlayerBans/v1/?key=DFD29B69257A9DAC44CF373FA899DBB0&format=json&steamids=#{steamid}"
    getResult(url)
  end
  
  def GetInventory(url)
    getResult(url)
  end
  
  def getResult(url)
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    result = JSON.parse(response.body)
    
    result
  end
end