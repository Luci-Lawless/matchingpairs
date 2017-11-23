class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_authorization
    @user = current_user
    if @user.is_admin?
      redirect_to @pairs.admin_show
    else
      redirect_to @pairs.user_show
   end
  end
end
