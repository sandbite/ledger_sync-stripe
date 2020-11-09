# frozen_string_literal: true

module LedgerSync
  module TemplateLedger
    class SampleResource
      class Deserializer < TemplateLedger::Deserializer
        attribute :ledger_id,
                  hash_attribute: 'Id'
        attribute :Name
        attribute :Email
      end
    end
  end
end
