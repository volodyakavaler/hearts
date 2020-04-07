class MonitorController < ApplicationController
  def index
    @monitors = Device.all
  end
end
