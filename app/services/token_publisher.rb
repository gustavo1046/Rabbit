require 'httparty'
require 'redis'

class TokenPublisher 
  def self.getToken()
    uri = URI.parse("http://localhost:3000/spree_oauth/token");

    body = {
      grant_type: "client_credentials",
      client_id: ENV["CLIENT_ID"],
      client_secret: ENV["CLIENT_SECRET"],
      scope: "admin",
    }

    response = HTTParty.post(uri, body: body.to_json, headers: { 'Content-Type' => 'application/json' });
    response = JSON.parse(response.body)
    token =  response["access_token"]
    puts token

    redis = Redis.new(host: "localhost", port: 6377, db: 0)

    redis.set("user_token", token, ex: 7200) 

    token_redis = redis.get("user_token")

    response = HTTParty.get(
      "http://localhost:3000/api/v2/platform/menu_items",
      headers: {
        "Authorization" => "Bearer #{token_redis}",
      }
    )

    puts response.body

  end
end