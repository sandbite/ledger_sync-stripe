# frozen_string_literal: true

require 'spec_helper'

RSpec.describe LedgerSync::Stripe::SampleResource, qa: true do
  let(:client) { stripe_client }
  let(:attribute_updates) do
    {
      Name: "QA UPDATE #{test_run_id}"
    }
  end
  # let(:record) { :sample_resource }
  let(:resource) do
    LedgerSync::Stripe::SampleResource.new(
      Email: "#{test_run_id}@example.com",
      Name: "Test SampleResource #{test_run_id}"
    )
  end

  it_behaves_like 'a full stripe resource'
end
