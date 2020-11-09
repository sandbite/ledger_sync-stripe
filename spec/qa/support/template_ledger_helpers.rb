# frozen_string_literal: true

core_qa_support :ledger_helpers
qa_support :template_ledger_shared_examples

module QA
  module TemplateLedgerHelpers
    include LedgerSync::Test::QA::LedgerHelpers

    def client_class
      LedgerSync::TemplateLedger::Client
    end

    def template_ledger_client
      @template_ledger_client ||= client_class.new_from_env
    end
  end
end

RSpec.configure do |config|
  config.include QA::TemplateLedgerHelpers, qa: true
end
