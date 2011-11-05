class FacebookController < ApplicationController
  
  def callback
    access_token_hash = MiniFB.oauth_access_token(Coldcut::Application::FB_APP_CONFIG["FACEBOOK_APP_ID"], facebook_redirect_url, Coldcut::Application::FB_APP_CONFIG["FACEBOOK_APP_SECRET"], params[:code])
    puts access_token_hash
    @access_token = access_token_hash["access_token"]
    @id = "me"
    @type = nil
    @response_hash = MiniFB.get(@access_token, @id, :type=>@type)

    puts @response_hash
    puts @response_hash.name
    
    # redirect_to root_url
  end

end
