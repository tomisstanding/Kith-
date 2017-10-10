shop_url = "https://#{ENV["API_KEY"]}:#{ENV["PASSWORD"]}@#{ENV["SHOP_NAME"]}.myshopify.com/admin"
ShopifyAPI::Base.site = shop_url
