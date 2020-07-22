class HomeController < ApplicationController

  def index
  end

  def image
    sleep 2
    redirect_to 'https://kylefox-awesome-stuff.s3.us-east-1.amazonaws.com/big-photo.jpg'
  end
end
