class ApplicationController < ActionController::Base
  
  helper :all # include all helpers, all the time
  protect_from_forgery
  layout 'standard' #added by Amol.
  #layout 'layout' #added by Amol.
  #layout 'login-box' #added by Amol.
  #layout 'style' #added by Amol.
  
  	rescue_from CanCan::AccessDenied do |exception|
       flash[:error] = exception.message
       flash[:error] = "Limited access."
       redirect_to root_url
    end
  	
    rescue_from ActiveRecord::RecordNotFound do |exception|    
  	flash[:error] = exception.message    
  	klass = params[:controller].classify    
  	url = url_for(:controller => params[:controller])    
  	request.env["HTTP_REFERER"] ||= url    
  	redirect_to :back  
  end
end
