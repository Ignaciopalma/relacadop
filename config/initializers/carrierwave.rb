# CarrierWave.configure do |config|
#   config.root = Rails.root.join('tmp') # adding these...
#   config.cache_dir = 'carrierwave'
#   config.fog_provider = 'fog/aws'                        # required
#   config.fog_credentials = {
#     provider:              'AWS',                        # required
#     aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],                        # required
#     aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],                        # required
#     region:                'us-east-1',  
#     host:                  's3-us-east-1.amazonaws.com',             # optional, defaults to nil                # optional, defaults to 'us-east-1'
#     endpoint:              'https://s3.amazonaws.com' # optional, defaults to nil
#   }
#   config.fog_directory  = ENV["AWS_BUCKET_NAME"]                          # required
#   config.fog_public     = false                                        # optional, defaults to true
#   config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
# end

CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = ENV.fetch('S3_BUCKET_NAME')
  config.aws_acl    = 'public-read'

  # Optionally define an asset host for configurations that are fronted by a
  # content host, such as CloudFront.
  config.asset_host = 'https://s3.amazonaws.com/relacadop-dynamic-assets'

  # The maximum period for authenticated_urls is only 7 days.
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7

  # Set custom options such as cache control to leverage browser caching
  config.aws_attributes = {
    expires: 1.week.from_now.httpdate,
    cache_control: 'max-age=604800'
  }

  config.aws_credentials = {
    access_key_id:     ENV.fetch('AWS_ACCESS_KEY_ID'),
    secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
    region:            'us-east-1' # Required
  }

  # Optional: Signing of download urls, e.g. for serving private content through
  # CloudFront. Be sure you have the `cloudfront-signer` gem installed and
  # configured:
  # config.aws_signer = -> (unsigned_url, options) do
  #   Aws::CF::Signer.sign_url(unsigned_url, options)
  # end
end