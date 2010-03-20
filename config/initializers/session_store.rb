# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Testolio_session',
  :secret      => '0413efcb8dd4c5a5b72cf485214357b4ade3df15b64fd2544c7c5a14b5119cca387b7b384ec596505322332a6db956b79c146ed4adf81743630b002954c59e4c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
