# frozen_string_literal: true

module LedgerSync
  module Stripe
    class PaymentMethod
      module Operations
        class Find < Stripe::Operation::Find
          class Contract < LedgerSync::Ledgers::Contract
            params do
            end
          end

          private

          def operate
            payment_method = ::Stripe::PaymentMethod.retrieve(
              resource.ledger_id
            )

            success(
              resource: resource,
              response: payment_method
            )
          end
        end
      end
    end
  end
end
