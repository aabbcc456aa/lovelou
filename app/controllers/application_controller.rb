class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  
  def authenticate_user!
#    redirect_to :controller => :home, :action => :index, :notice => "请登录" unless current_user
  end
end
