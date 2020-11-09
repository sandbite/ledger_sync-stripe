# frozen_string_literal: true

require_relative 'client'

args = {
  base_module: LedgerSync::TemplateLedger,
  root_path: 'ledger_sync/template_ledger'
}

LedgerSync.register_ledger(:template_ledger, args) do |config|
  config.name = 'TemplateLedger'
end
