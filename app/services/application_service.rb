# frozen_string_literal: true

class ApplicationService
  extend Dry::Initializer

  class << self
    def call(...)
      new(...).call
    end
  end

  def call
    raise NotImplemetedError
  end
end
