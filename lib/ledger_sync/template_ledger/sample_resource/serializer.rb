# frozen_string_literal: true

module LedgerSync
  module TemplateLedger
    class SampleResource
      class Serializer < TemplateLedger::Serializer
        attribute :Id,
                  resource_attribute: :ledger_id
        attribute :Name
        attribute :Email
      end
    end
  end
end
