Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'],ENV['FACEBOOK_SECRET'],
           :scope => 'email', :display => 'page', :secure_image_url => true, :image_size => 'large'
end
