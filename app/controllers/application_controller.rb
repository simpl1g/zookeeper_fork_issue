class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def root
    render json: ZookeeperForkExample.current.children('/')
  end
end
