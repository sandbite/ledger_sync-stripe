# frozen_string_literal: true

require 'stripe'

module LedgerSync
  module Stripe
    class PaymentIntent
      module Operations
        class Confirm < Stripe::Operation::Create
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:payment_intent_id).filled(:string)
            end
          end

          private

          def operate
            pm_intent = Stripe::PaymentIntent.confirm(
              resource.payment_intent_id,
              return_url: resource.return_url,
              off_session: resource.off_session
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
