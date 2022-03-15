# frozen_string_literal: true

module LedgerSync
  module Stripe
    class Customer < Stripe::Resource
      attribute :email, type: LedgerSync::Type::String
      attribute :name, type: LedgerSync::Type::String
      attribute :phone_number, type: LedgerSync::Type::String
      attribute :external_id, type: LedgerSync::Type::String
    end
  end
end
