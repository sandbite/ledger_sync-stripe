# frozen_string_literal: true

module LedgerSync
  module Stripe
    class Client
      include Ledgers::Client::Mixin

      ROOT_URI = 'https://api.stripe.com'
      DEFAULT_HEADERS = { 'Accept' => 'application/json', 'Content-Type' => 'application/json' }.freeze

      attr_reader :api_key

      def initialize(args = {})
        @api_key = args.fetch(:api_key)
      end

      def find(path:)
        url = File.join(ROOT_URI, path)

        request(
          headers: DEFAULT_HEADERS,
          method: :get,
          url: url
        )
      end

      def post(path:, payload:)
        url = File.join(ROOT_URI, path)

        request(
          headers: DEFAULT_HEADERS,
          method: :post,
          body: payload,
          url: url
        )
      end

      def request(method:, url:, body: nil, headers: {})
        LedgerSync::Ledgers::Request.new(
          client: self,
          body: body,
          headers: headers,
          method: method,
          url: url
        ).perform
      end

      def self.new_from_env(**override)
        new(
          {
            api_key: ENV.fetch('STRIPE_API_KEY')
          }.merge(override)
        )
      end

      def self.ledger_attributes_to_save
        %i[api_key]
      end
    end
  end
end
