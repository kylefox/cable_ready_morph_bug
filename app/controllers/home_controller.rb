class HomeController < ApplicationController
  include CableReady::Broadcaster

  def index
  end

  def image
    sleep 2
    redirect_to 'https://kylefox-awesome-stuff.s3.us-east-1.amazonaws.com/big-photo.jpg'
  end

  def update
    cable_ready["example-stream"].morph(
      selector: "#hello",
      permanent_attribute_name: 'data-permanent',
      html: HomeController.render(partial: 'hello')
    )

    cable_ready.broadcast
  end
end
