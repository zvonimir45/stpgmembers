if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => "AKIAJKGICZFQ5Y7RCBNA",
      :aws_secret_access_key => "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"
    }
    config.fog_directory     = "bertabriliante"
  end
end
