# frozen_string_literal: true

require 'stripe'

module LedgerSync
  module Stripe
    class Customer
      module Operations
        class Create < Stripe::Operation::Create
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:phone_number).maybe(:string)
            end
          end

          private

          def operate
            stripe_customer = ::Stripe::Customer.create(
              metadata: {
                external_id: resource.external_id
              }
            )

            resource.ledger_id = stripe_customer.id

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
