CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => ENV['AWSKEY'],       # required
    :aws_secret_access_key  => ENV['AWSSEC'],       # required
    :region                 => 'us-east-1'  # optional, defaults to 'us-east-1'
  }

  config.fog_directory  = ENV['BUCKET']                     # required
  config.fog_public     = false                                   # optional, defaults to true

end