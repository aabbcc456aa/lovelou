# This references the Dropbox SDK gem install with "gem install dropbox-sdk"
require 'dropbox_sdk'

# Get your app key and secret from the Dropbox developer website
APP_KEY = '2ueblkhlzxp3ejg'
APP_SECRET = 'eu7ebr0ztdm1htd'

# ACCESS_TYPE should be ':dropbox' or ':app_folder' as configured for your app
ACCESS_TYPE = :app_folder
DROP_SESSION = DropboxSession.new(APP_KEY, APP_SECRET)
DROP_SESSION.get_request_token
authorize_url = DROP_SESSION.get_authorize_url
puts authorize_url
#DROP_SESSION.get_access_token

#DROP_CLIENT = DropboxClient.new(DROP_SESSION, ACCESS_TYPE)