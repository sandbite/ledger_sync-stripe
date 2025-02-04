# frozen_string_literal: true

module LedgerSync
  module Stripe
    class Customer
      module Operations
        class Update < Stripe::Operation::Update
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:ledger_id).filled(:string)
              required(:external_id).maybe(:string)
              required(:email).maybe(:string)
              required(:name).maybe(:string)
              required(:phone_number).maybe(:string)
            end
          end

          private

          def operate
            stripe_customer = ::Stripe::Customer.update(
              resource.ledger_id,
              email: resource.email,
              metadata: {
                external_id: resource.external_id
              },
              name: resource.name,
              phone: resource.phone_number
            )

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
