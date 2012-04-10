require 'yaml'

APP_CONFIG = Hash.new{|hash, key| raise(IndexError, "no such key : [#{key}] !!")}
APP_CONFIG.merge!(YAML.load(File.open(Rails.root.to_s + '/config/app_config.yml')))
APP_CONFIG.each do |k,v|
  if v.is_a?(Hash)
    v.replace(Hash.new{|hash,key| raise(IndexError, "no such a key in APP_CONFIG : #{key} !!")}.merge(v))
  end
end

APP_CONFIG[:email_regexp] = /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i

def app_config_valid?(hash)
  hash.each do |k,v|
    unless k.is_a?(Symbol)
      require "/config/app_config.yml"
    end

    case 
    when v.is_a?(Hash)   
      app_config_valid?(v)
    when v.is_a?(String) 
      v.sub!(/\{Rails.root.to_s\}/, Rails.root.to_s)
    end
  end
end
app_config_valid?(APP_CONFIG)

# Don't Comment out!!
APP_CONFIG.freeze
