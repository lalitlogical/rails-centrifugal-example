class ChatsController < ApplicationController
  def index
    @timestamp = Time.now.to_i
    @user = @timestamp
    @token = Client.token_for(@user, @timestamp)
  end

  def create
    Client.publish('public-channel', { message: params[:message], user: params[:user] })
  end
end
