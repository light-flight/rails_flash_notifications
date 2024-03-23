class DemoController < ApplicationController
  def index
    flash.now[:success] = "Welcome to the Demo!", 'Notification title'
  end
end
