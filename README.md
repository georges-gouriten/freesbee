# Coldcut

Give and receive, the principle of reciprocity :)

## Development

To run the server:

    bundle exec rails s -p 4000

* You will need imagemagick to resize uploaded images.
* You also need to create `config/initializers/omniauth.rb` with the following content (with real id and secret): 

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :facebook, 'ID', 'SECRET'
    end

