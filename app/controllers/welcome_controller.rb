class WelcomeController < ApplicationController
	before_action :authenticate_user!
 
 def index
  	@instagram = Instagram.user_recent_media("270871053", {:count => 1})
  end
 
 def user_tweet
    require "rubygems"
    require "twitter"
  
    # Certain methods require authentication. To get your Twitter OAuth credentials,
    # register an app at http://dev.twitter.com/apps
    Twitter.configure do |config|
      config.consumer_key = 'rrQYcTWzfO6wQCR17VpmQ00a0'
      config.consumer_secret =  'WPM9LI1HhDXhPBbz1iOWKjEzym6i0MELtd0s03H7ITtZcIczOE'
      config.oauth_token = '1417561212-aTL06qM2401fT5idma8G6utFgYG0en2iCp8vThg'
      config.oauth_token_secret = 'bscUW0jtag0g7ieyJwPt7I27R09S7SJqGRD7eM9s3LetY'
    end
    # Initialize your Twitter client
    client = Twitter::Client.new
  
    # Post a status update
    client.update("I just posted a status update via the Twitter Ruby Gem !")
    redirect_to request.referer, :notice => 'Tweet successfully posted'
end

end
