class User < ActiveRecord::Base
  
  validates :uid, :presence => true
  validates :name, :presence => true
  validates :email, :presence => true

  def self.create_with_omniauth(auth)
    begin
      create! do |user|
        user.provider = auth['provider']
        user.uid =      auth['uid']
        user.name =     auth['info']['name'] if auth['info']['name']
        user.email =    auth['info']['email'] if auth['info']['email']
      end
    rescue Exception => e
      logger.info e
      raise Exception, "cannot create user record"
    end
  end
    
  def profile_photo_url
    "http://graph.facebook.com/#{uid}/picture"
  end
end
