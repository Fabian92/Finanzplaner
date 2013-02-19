class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)

        "http://localhost:3000/finanzs"

 end

   def after_sign_out_path_for(resource)

        "http://localhost:3000/home/index"

 end

   def after_edit_user_registration_path_for(resource)
        "http://localhost:3000/finanzs"
    end

def authenticate_admin_user!
  	redirect_to new_user_session_path unless current_user && current_user.has_role?(:admin)
end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to new_user_session_path, :alert => exception.message
 
end

def create
  @user = User.create( params[:user] )
end

end