# frozen_string_literal: true

require 'ledger_sync'

module LedgerSync
  module Stripe
    def self.root(*paths)
      File.join(File.expand_path('../..', __dir__), *paths.map(&:to_s))
    end
  end
end

require_relative 'stripe/config'
