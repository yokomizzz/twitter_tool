class PostsController < ActionController::Base
  before_action :set_client

  require 'twitter'


  def index
    @posts = @client.home_timeline
    @post = Post.new
    @account = Account.new
    # @followers = @client.followers("yokomi_zzz")
  end

  def new
    @post = Post.new
  end

  def create

  end

  def post_search
    @post = Post.new
  end

end


private
  def set_client
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = CONSUMER_KEY
      config.consumer_secret     = CONSUMER_SECRET
      config.access_token        = ACCESS_TOKEN
      config.access_token_secret = ACCESS_TOKEN_SECRET
    end
  end