if Rails.env.development?

  all_smtp_config = YAML.load_file( File.join( Rails.root, 'config', 'smtp.yml' ) )
  current_smtp_config = all_smtp_config[Rails.env]

  ActionMailer::Base.smtp_settings = {
    :address              => 'smtp.gmail.com',
    :port                 => 587,
    :domain               => 'fixitwithcode.com',
    :user_name            => 'emily@fixitwithcode.com',
    :password             => current_smtp_config['password'],
    :authentication       => 'plain',
    :enable_starttls_auto => true
  }

elsif Rails.env.production?

  ActionMailer::Base.smtp_settings = {
    :address              => 'smtp.gmail.com',
    :port                 => 587,
    :domain               => 'fixitwithcode.com',
    :user_name            => 'emily@fixitwithcode.com',
    :password             => ENV['password'],
    :authentication       => 'plain',
    :enable_starttls_auto => true
  }

end