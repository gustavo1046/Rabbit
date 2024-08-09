require 'httparty'

class TokenPublisher 
  def getToken(client_id, client_secret)
    uri = URI.parse("http://localhost:3000/spree_oauth/token");

    body = {
      grant_type: "credentials",
      client_id: "vgQtzQNnyQjEAo1Cfw8-fVh2IQwPJJDJkn9psAeVC2w",
      client_secret: "TCfBtKLBghGDzWHayQEjC86FYv2-66Sislj4Kge_gGM",
      scope: "admin",
    }

    response = HTTParty.post(uri, body: body, headers: { 'Content-Type' => 'application/json' });
    puts response.body
  end
end