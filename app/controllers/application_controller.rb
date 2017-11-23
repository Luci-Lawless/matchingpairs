class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_authorization

    if @user.is_admin?
      redirect_to @pairs.admin_index
    else
      redirect_to @pairs.user_index
   end
  end
end
