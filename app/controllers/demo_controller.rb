class DemoController < ApplicationController
  def index
    flash.now[:success] = "Welcome to the Demo!", 'Notification title'
    @flash_types = Types::FlashType.values
  end

  def streamer; end
end
