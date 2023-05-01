class SessionsController < ApplicationController
  before_action :require_user_not_logged_in!, only: %i[new create]
  after_action :require_flash_session!, only: %i[create]

  def new
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user.present? && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: I18n.t("flash_sessions_notice")
    else
      flash[:alert] = I18n.t("flash_sessions_invalid")
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: I18n.t("flash_sessions_logout")
  end
end
