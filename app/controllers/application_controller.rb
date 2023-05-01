class ApplicationController < ActionController::Base
  before_action :set_current_user
  def set_current_user
    return unless session[:user_id]

    Current.user = User.find_by(id: session[:user_id])
  end

  def require_user_logged_in!
    redirect_to sign_in_path, alert: I18n.t("flash_sessions_invalid_signed") if Current.user.nil?
  end

  def require_user_not_logged_in!
    redirect_to root_path, alert: I18n.t("flash_sessions_invalid_not_logged") unless Current.user.nil?
  end

  def require_flash_session!
    flash.clear if flash[:alert]
  end
end
