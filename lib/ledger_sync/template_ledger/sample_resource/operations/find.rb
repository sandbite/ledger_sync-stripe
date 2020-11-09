# frozen_string_literal: true

module LedgerSync
  module TemplateLedger
    class SampleResource
      module Operations
        class Find < TemplateLedger::Operation::Find
          class Contract < LedgerSync::Ledgers::Contract
            params do
              optional(:external_id).filled(:string)
              required(:ledger_id).filled(:string)
              optional(:Name).maybe(:string)
              optional(:Email).maybe(:string)
            end
          end
        end
      end
    end
  end
end
