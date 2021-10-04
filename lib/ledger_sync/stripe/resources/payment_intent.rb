# frozen_string_literal: true

module LedgerSync
  module Stripe
    class PaymentIntent < Stripe::Resource
      attribute :amount_cents, type: LedgerSync::Type::Integer
      attribute :currency, type: LedgerSync::Type::String
      attribute :payment_method_id, type: LedgerSync::Type::String
      attribute :customer_id, type: LedgerSync::Type::String
      attribute :off_session, type: LedgerSync::Type::Boolean
      attribute :return_url, type: LedgerSync::Type::String
      attribute :payment_intent_id, type: LedgerSync::Type::String
      attribute :confirm, type: LedgerSync::Type::Boolean
    end
  end
end
