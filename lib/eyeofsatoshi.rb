# frozen_string_literal: true

require 'httparty'
require_relative "eyeofsatoshi/version"

module Eyeofsatoshi
  class Error < StandardError; end
  class Base
    attr_accessor :options

    def initialize(options)
      @options = options
    end
    def request(type, url, opts = {})
      HTTParty
        .send(type, url, opts)
        .yield_self { |response| parsed_response(response) }
    end

    def parsed_response(response)
      "#{__method__}"
    end
  end
end
