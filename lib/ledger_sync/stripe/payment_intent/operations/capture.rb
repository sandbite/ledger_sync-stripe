# frozen_string_literal: true

require 'stripe'

module LedgerSync
  module Stripe
    class PaymentIntent
      module Operations
        class Capture < Stripe::Operation::Create
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:payment_intent_id).filled(:string)
            end
          end

          private

          def operate
            pm_intent = ::Stripe::PaymentIntent.capture(
              resource.payment_intent_id,
            )
            resource.ledger_id = resource.payment_intent_id

            success(
              resource: resource,
              response: pm_intent
            )
          end
        end
      end
    end
  end
end
