# frozen_string_literal: true

module LedgerSync
  module TemplateLedger
    class SampleResource < TemplateLedger::Resource
      attribute :Name, type: Type::String
      attribute :Email, type: Type::String
    end
  end
end
