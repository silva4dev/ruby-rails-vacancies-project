class RegistrationsController < ApplicationController
  before_action :require_user_not_logged_in!, only: %i[new create]
  after_action :require_flash_session!, only: %i[create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: I18n.t("flash_registrations_notice")
    else
      flash[:alert] = @user.errors.full_messages
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :professional_experience)
  end
end
