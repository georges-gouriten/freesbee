# Freesbee

Give and receive, the principle of reciprocity :)

## Development

### Installation

1. Copy `config/initializers/omniauth.rb.example` to `config/initializers/omniauth.rb` and fill in `fb_id` and `fb_secret` with the appropriate values.

1. Copy `config/database.yml.example` to `config/database.yml` and fill in the username/password as required.

1. Install imagemagick (for resizing uploaded images). If using brew:

    brew install imagemagick

1. Create the database

    bundle exec rake db:drop db:create db:migrate db:seed

To reset the database:

    bundle exec rake db:drop db:create db:migrate db:seed


### Running the application

To run the server:

    bundle exec rails s -p 4000
