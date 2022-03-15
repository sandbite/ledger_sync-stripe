# frozen_string_literal: true

module LedgerSync
  module Stripe
    class Customer
      module Operations
        class Delete < Stripe::Operation::Delete
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:ledger_id).filled(:string)
            end
          end

          private

          def operate
            stripe_customer = ::Stripe::Customer.delete(resource.ledger_id)

            success(
              resource: resource,
              response: stripe_customer
            )
          end
        end
      end
    end
  end
end
