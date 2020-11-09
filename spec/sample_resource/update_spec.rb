# frozen_string_literal: true

require 'spec_helper'

support :template_ledger_shared_examples

RSpec.describe LedgerSync::TemplateLedger::SampleResource::Operations::Update, operation: true do
  it_behaves_like 'a template_ledger operation'
end
