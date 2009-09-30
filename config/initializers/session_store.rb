# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_feedback_session',
  :secret      => 'bad50b793f9fe0fc1ddaad4533e3023c2f1919a40de69284887c9312dc99495f195a585786f234f6ac428eeab45661957706bd4c30d0770a0e14a6b40ad9e1a1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
