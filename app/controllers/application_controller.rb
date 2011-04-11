class ApplicationController < ActionController::Base
  session :session_key => '_depot_session_id'
  
  protect_from_forgery :secret => '8c3e099237e6366fd2f5366e9c430e79'
end
