class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)

        "http://localhost:3000/finanzs"

 end

   def after_sign_out_path_for(resource)

        "http://localhost:3000/home/index"

 end

def authenticate_admin_user!
  	redirect_to new_user_session_path unless current_user && current_user.has_role?(:admin)
end
end