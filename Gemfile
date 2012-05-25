#source 'http://ruby.taobao.org/'
source 'http://rubygems.org'

gem 'rails', '3.1.3'
gem 'thin'
# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails    /rails.git'
#db
gem 'pg'
gem 'mysql2'

#云存储
gem 'fog'#, :path => "vendor/plugins/fog"

gem 'dropbox-sdk' 
#登录插件
gem 'devise', '1.5.2'
#富文本
gem 'rails_kindeditor', '~> 0.3.0'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

#nodejs
gem 'execjs'
gem 'therubyracer'

#图片上传
gem 'mini_magick'
gem 'carrierwave'
gem 'paperclip'  
#per_page
gem 'kaminari'

gem 'jquery-rails'

# added 
gem 'nifty-generators'

gem 'simple_form'
gem 'bootstrap-rails', :require => 'bootstrap-rails',
  :git => 'git://github.com/xdite/bootstrap-rails.git'

#清除垃圾日志          
group :development do
  gem 'quiet_assets', git: 'git@github.com:AgilionApps/quiet_assets.git', tag: 'v0.1.0'
end
group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
end
