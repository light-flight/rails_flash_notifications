# frozen_string_literal: true

# lib/types.rb
module Types
  include Dry.Types()

  FLASH_TYPE_MAP = {
    info: :info,
    notice: :info,
    success: :success,
    alert: :warning,
    warning: :warning,
    fail: :error,
    error: :error
  }.freeze

  FlashType = Types::Coercible::Symbol
              .enum(*FLASH_TYPE_MAP.keys)
              .constructor { FLASH_TYPE_MAP[_1.to_sym] }
end
