class ApplicationController < ActionController::Base
  add_flash_types :error, :success
  helper_method :show_flash

  def show_flash(...)
    turbo_stream.append(:flash_container) do
      render Flash::Component.new(...)
    end
  end
end
