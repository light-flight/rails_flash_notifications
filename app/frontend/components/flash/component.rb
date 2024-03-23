# frozen_string_literal: true

class Flash::Component < ApplicationViewComponent
  param :message, type: Types::Coercible::Array.of(Types::Coercible::String)
  option :type, type: Types::FlashType, default: -> { 'info' }
  option :title, type: Types::Coercible::String, optional: true

  COLORS = {
    info: 'text-blue-500 bg-blue-100 dark:bg-blue-800 dark:text-blue-200',
    success: 'text-green-500 bg-green-100 dark:bg-green-800 dark:text-green-200',
    warning: 'text-amber-500 bg-amber-100 dark:bg-amber-800 dark:text-amber-200',
    error: 'text-red-500 bg-red-100 dark:bg-red-800 dark:text-red-200'
  }.freeze

  ICONS = {
    info: :information_circle,
    success: :check_circle,
    warning: :exclamation_circle,
    error: :exclamation_circle
  }.freeze
end
