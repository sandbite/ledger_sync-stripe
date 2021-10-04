# frozen_string_literal: true

require 'stripe'

module LedgerSync
  module Stripe
    class PaymentIntent
      module Operations
        class Create < Stripe::Operation::Create
          class Contract < LedgerSync::Ledgers::Contract
            params do
            end
          end

          private

          def operate
            pm_intent = ::Stripe::PaymentIntent.create(payment_intent_params)
            resource.ledger_id = pm_intent.id

            success(
              resource: resource,
              response: pm_intent
            )
          end

          def payment_intent_params
            {
              amount: resource.amount_cents,
              currency: resource.currency,
              customer: resource.customer_id,
              payment_method: resource.payment_method_id,
              off_session: resource.off_session,
              return_url: resource.return_url,
              confirm: resource.confirm
            }
          end
        end
      end
    end
  end
end
