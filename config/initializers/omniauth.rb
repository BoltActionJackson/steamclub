require "omniauth/strategies/steam"
require "openid/store/filesystem"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :steam, 'DFD29B69257A9DAC44CF373FA899DBB0', :storage => OpenID::Store::Filesystem.new("/tmp")
end