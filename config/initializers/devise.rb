# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|

  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  config.secret_key = '8d6a3f6e126470cb5ce02b3427087b44b2b27af713b5aabd5db5b291208394097577ee7bcc98c4430e555bd8fa457b472410c8d97dd0b45b7aa4f9e80a3a0a9a'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]


  config.stretches = Rails.env.test? ? 1 : 11


  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true


  config.password_length = 6..128


  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/


  config.reset_password_within = 6.hours


  config.sign_out_via = :delete

end
