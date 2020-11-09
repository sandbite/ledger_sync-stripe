# frozen_string_literal: true

module LedgerSync
  module Stripe
    class SampleResource
      class Deserializer < Stripe::Deserializer
        attribute :ledger_id,
                  hash_attribute: 'Id'
        attribute :Name
        attribute :Email
      end
    end
  end
end
