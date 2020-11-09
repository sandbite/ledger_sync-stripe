# frozen_string_literal: true

module LedgerSync
  module TemplateLedger
    class SampleResource
      module Operations
        class Create < TemplateLedger::Operation::Create
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:external_id).filled(:string)
              required(:ledger_id).value(:nil)
              required(:Name).maybe(:string)
              required(:Email).maybe(:string)
            end
          end
        end
      end
    end
  end
end
