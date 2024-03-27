# frozen_string_literal: true

module Flash
  class Broadcast < ApplicationService
    param :user
    param :message
    param :options, optional: true, default: -> { {} }

    delegate :broadcast_append_to, to: Turbo::StreamsChannel
    delegate :dom_id, to: ActionView::RecordIdentifier
    delegate :render, to: ApplicationController

    def call
      broadcast_append_to(
        dom_id(user, :flash_container),
        target: :flash_container,
        html: render(Flash::Component.new(message, **options), layout: false)
      )
    end
  end
end
