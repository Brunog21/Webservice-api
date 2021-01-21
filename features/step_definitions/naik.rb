Dado('o endereço da API') do
    $uri_base = "https://gorest.co.in/public-api/users"
  end
  
  Quando('realizar uma aquisição') do
    $response = HTTParty.get($uri_base, :body => {"name":"naik"})
  end
  
  Então('validar o statusCode {int}') do |int|
    log("response body #{$response.body}")
    log("response code #{$response.code}")
  end
  