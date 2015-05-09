json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :steamid, :nome, :nickname, :image, :profile, :status
  json.url usuario_url(usuario, format: :json)
end
