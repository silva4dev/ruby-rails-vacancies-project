class JobApplicationsController < ApplicationController
  def create
    job_id = params[:id]
    user_id = Current.user.id

    if JobApplication.exists?(user_id:, job_id:)
      flash[:alert] = I18n.t("flash_jobs_applications_exists")
      redirect_to jobs_details_path(job_id)
      return
    end

    job_application = JobApplication.new(user_id:, job_id:)

    if job_application.save
      redirect_to root_path, notice: I18n.t("flash_jobs_applications_notice")
    else
      flash[:alert] = I18n.t("flash_jobs_applications_invalid")
      redirect_to jobs_details_path(job_id)
    end
  end
end
