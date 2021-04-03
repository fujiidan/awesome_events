Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "3afd5d474d359dc89f0e", "6a797e72fd79b9f0b193846a0b42a38324341627"
  else 
    provider :github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end    
end