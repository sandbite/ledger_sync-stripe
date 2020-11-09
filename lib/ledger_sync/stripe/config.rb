# frozen_string_literal: true

require_relative 'client'

args = {
  base_module: LedgerSync::Stripe,
  root_path: 'ledger_sync/stripe'
}

LedgerSync.register_ledger(:stripe, args) do |config|
  config.name = 'Stripe'
end
