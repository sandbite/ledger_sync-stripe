# frozen_string_literal: true

module LedgerSync
  module Stripe
    class SampleResource
      class Serializer < Stripe::Serializer
        attribute :Id,
                  resource_attribute: :ledger_id
        attribute :Name
        attribute :Email
      end
    end
  end
end
