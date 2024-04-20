class HomeController < ApplicationController
  def top
    @url = root_url
    logger.info @url
  end
  def index
  end
end
