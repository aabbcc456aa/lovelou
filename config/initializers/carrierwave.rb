CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider                         => 'Google',
    :google_storage_access_key_id     => 'GOOGCWDY6OZVPXKOFEZ3',
    :google_storage_secret_access_key => 'k+X7Jagv6WjRK12AwxVBPxr72scCG99w4WUFhXnv'
  }
  config.fog_directory = "deviseuploader"
end