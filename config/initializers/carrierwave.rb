CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave'
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],                        # required
    aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],                        # required
    region:                'us-east-1',  
    host:                  's3-us-east-1.amazonaws.com',             # optional, defaults to nil                # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = ENV["AWS_BUCKET_NAME"]                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end