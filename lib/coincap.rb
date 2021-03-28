module Eyeofsatoshi
  class Coincap < Base
    def request
      super(:get, url)
    end

    def parsed_response(response)
      response.dig('data', 'priceUsd').to_f
    end

    def url
      "https://api.coincap.io/v2/assets/#{options[:name]}"
    end
  end
end
