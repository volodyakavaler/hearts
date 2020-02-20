class PointsetChannel < ApplicationCable::Channel
  def subscribed
    stream_from "pointset_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
