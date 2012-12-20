OmniAuth.config.logger = Rails.logger

sn = YAML.load_file(Rails.root + 'config/social_networks_tokens.yml')
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, sn['facebook']['facebook_app_id'], sn['facebook']['facebook_app_secret']
  provider :twitter,  sn['twitter']['consumer_key'], sn['twitter']['consumer_secret']
  provider :linkedin, sn['linkedin']['consumer_key'], sn['linkedin']['consumer_secret']
  provider :vkontakte, sn['vkontakte']['api_key'], sn['vkontakte']['api_secret']
end
