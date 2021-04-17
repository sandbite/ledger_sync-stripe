# frozen_string_literal: true

require 'spec_helper'

support :stripe_shared_examples

module LedgerSync
  module Stripe
    module Customer
      module Operations
        RSpec.describe Create, operation: true do
          it_behaves_like 'a stripe operation'
        end
      end
    end
  end
end
