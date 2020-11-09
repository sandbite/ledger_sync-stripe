# frozen_string_literal: true

module LedgerSync
  module Stripe
    class SampleResource < Stripe::Resource
      attribute :Name, type: Type::String
      attribute :Email, type: Type::String
    end
  end
end
