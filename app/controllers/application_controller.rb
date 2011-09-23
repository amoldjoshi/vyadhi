class ApplicationController < ActionController::Base
  
  helper :all # include all helpers, all the time
  protect_from_forgery
  layout 'standard' #added by Amol to
end
