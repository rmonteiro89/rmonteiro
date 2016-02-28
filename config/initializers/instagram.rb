require "instagram"

Instagram.configure do |config|
  config.client_id = "91a91d9b381045018a833dcd7dc56312"
  config.access_token = Rails.application.secrets[:instagram_access_token]
end
