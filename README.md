# Coldcut

Give and receive, the principle of reciprocity :)


## Instructions
* You will need imagemagick to resize uploaded images.
* You also need to create `config/initializers/omniauth.rb` with the following content (with real id and secret): 

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :facebook, 'ID', 'SECRET'
    end

