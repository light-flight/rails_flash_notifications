class ApplicationViewComponent < ViewComponentContrib::Base
  extend Dry::Initializer

  delegate :icon, to: :helpers
end
