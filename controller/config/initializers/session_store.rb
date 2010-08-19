# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_controller_session',
  :secret      => 'ef277d6f1cfd0dc4669e7eaa76837d18bc18ce41ecc1e94825dbbd4b462a92c33a0ad71c12db486cb7c0114a288264acfc0f950839214b0d7b7d3d74e5067fd2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
