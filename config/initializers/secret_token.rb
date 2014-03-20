# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
UserManager::Application.config.secret_key_base = '6205edfca4280ccd971d2297c0cf51d3eb351fb9fb8428335ffed8387613fb5104bbb466898ca297ef786fd1a9f78c3157a742b968602661122ff17c2db5a770'
