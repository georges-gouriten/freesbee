class SessionsController < ApplicationController
  
  def create
    # auth = request.env["omniauth.auth"]
    # user = User.where(:provider => auth['provider'], 
    #                   :uid => auth['uid']).first || User.create_with_omniauth(auth)
    # session[:user_id] = user.id
    # redirect_to root_url, :notice => "Signed in!"
    
    access_token_hash = MiniFB.oauth_access_token(Coldcut::Application::FB_APP_CONFIG["FACEBOOK_APP_ID"], facebook_redirect_url, Coldcut::Application::FB_APP_CONFIG["FACEBOOK_APP_SECRET"], params[:code])
    puts access_token_hash
    @access_token = access_token_hash["access_token"]
    @id = "me"
    @type = nil
    @response_hash = MiniFB.get(@access_token, @id, :type=>@type)

    user = User.find_or_create_by_uid(:uid => @response_hash.id)
    unless user.present?
      user.name = @response_hash.name
      user.uid = @response_hash.id
      user.email = @response_hash.email
      user.provider = "facebook"
    end
    
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"

    # puts @response_hash
    # puts @response_hash.name
    
  end

  def new
    # redirect_to MiniFB.oauth_url(Coldcut::Application::FB_APP_CONFIG["FACEBOOK_APP_ID"],
    #                               'http://localhost:4000/auth/facebook/callback',
    #                               # url_for(:controller => :session, :action => :create), # redirect url
    #                               # root_url,
    #                               :scope => Coldcut::Application::FB_APP_CONFIG["FACEBOOK_APP_SCOPE"])
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => 'Signed out!'
  end
  
  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end
end
