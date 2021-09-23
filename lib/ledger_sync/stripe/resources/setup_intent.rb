# frozen_string_literal: true

module LedgerSync
  module Stripe
    class SetupIntent < Stripe::Resource
      attribute :customer_id, type: LedgerSync::Type::String
    end
  end
end
