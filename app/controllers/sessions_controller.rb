class SessionsController < ApplicationController
  
  def create
    auth = request.env["omniauth.auth"]
    logger.info(auth[:uid])
    logger.info auth[:info]
    logger.info auth[:provider]
    logger.info auth[:info][:name]
    logger.info auth[:info][:email]
    
    user = User.where(:provider => auth['provider'], 
                      :uid => auth['uid']).first || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"
  end

  def new
    redirect_to "/auth/facebook"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => 'Signed out!'
  end
  
  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end
  
  def facebook
    redirect_to MiniFB.oauth_url(Coldcut::Application::FB_APP_CONFIG["FACEBOOK_APP_ID"],
                              'http://localhost:4000/auth/facebook/callback', # redirect url
                              # facebook_callback_url,
                              # url_for({:controller => :sessions, :action => :create}),
                              # auth_facebook_callback_url,
                              :scope => Coldcut::Application::FB_APP_CONFIG["FACEBOOK_APP_SCOPE"])
  end
end
