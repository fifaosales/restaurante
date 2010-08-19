# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_padaria_session',
  :secret      => 'c8614aa36c857a15bc6e1e063325b44701221a20437bce694edebb24f3c5a2cb1825719dd0d2f0bcb9ed67deea547ecb8773fcd3a2f149b8fd353d212b084f06'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
