require "net/http"
require "uri"
require "json"

class ExternalApiCaller
  def call uri, data
    uri = URI.parse uri

    request = Net::HTTP::Post.new(uri)

    req_options = { use_ssl: uri.scheme == "https" }
    request.content_type = "application/json"
    request.body = JSON.dump(data)

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    return response.body
  end
end