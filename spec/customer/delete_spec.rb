# frozen_string_literal: true

require 'spec_helper'

support :stripe_shared_examples

RSpec.describe LedgerSync::Stripe::Customer::Operations::Delete, operation: true do
  it_behaves_like 'a stripe operation'
end
