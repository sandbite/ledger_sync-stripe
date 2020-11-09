# frozen_string_literal: true

core_qa_support :ledger_helpers
qa_support :stripe_shared_examples

module QA
  module StripeHelpers
    include LedgerSync::Test::QA::LedgerHelpers

    def client_class
      LedgerSync::Stripe::Client
    end

    def stripe_client
      @stripe_client ||= client_class.new_from_env
    end
  end
end

RSpec.configure do |config|
  config.include QA::StripeHelpers, qa: true
end
