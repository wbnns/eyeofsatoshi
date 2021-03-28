require '../lib/base'
require '../lib/coinbase'
require '../lib/coincap'
require '../lib/coingecko'
require '../lib/coinpaprika'
require '../lib/cryptocompare'

module Eyeofsatoshi
  class Wrapper < Base
    %w[coinbase coincap coingecko coinpaprika cryptocompare].each do |api|
      define_method(api.to_sym) do
        Object.const_get("Api::#{klassify(api)}").new(@options).request
      end
    end
    def klassify(name)
      name.capitalize
    end
  end
end
