module Eyeofsatoshi
  class Cryptocompare < Base
    def request
      super(:get, url)
    end

    def parsed_response(response)
      response.dig('USD').to_f
    end

    def url
      "https://min-api.cryptocompare.com/data/price?fsym=#{options[:symbol]}&tsyms=USD"
    end
  end
end
