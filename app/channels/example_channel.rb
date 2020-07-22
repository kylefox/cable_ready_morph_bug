class ExampleChannel < ApplicationCable::Channel
  def subscribed
    stream_from "example-stream"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
