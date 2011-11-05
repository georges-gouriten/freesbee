class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :get_oauth_url
  
  def get_oauth_url
    
    @oauth_url = MiniFB.oauth_url(Coldcut::Application::FB_APP_CONFIG["FACEBOOK_APP_ID"],
                                facebook_redirect_url, # redirect url
                                :scope=>MiniFB.scopes.join(","))
  end
end
