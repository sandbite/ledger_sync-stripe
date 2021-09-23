# frozen_string_literal: true

require 'stripe'

module LedgerSync
  module Stripe
    class SetupIntent
      module Operations
        class Create < Stripe::Operation::Create
          class Contract < LedgerSync::Ledgers::Contract
            params do
            end
          end

          private

          def operate
            setup_intent = ::Stripe::SetupIntent
                           .create({ customer: resource.customer_id })

            success(
              resource: resource,
              response: setup_intent
            )
          end
        end
      end
    end
  end
end
