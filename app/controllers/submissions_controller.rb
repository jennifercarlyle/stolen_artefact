class SubmissionsController < ApplicationController
  def create
    @submission = Submission.new(submission_params)
    @submission.user = current_user
    if @submission.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def submission_params
    params.require(:submission).permit(:description, :name, :origin_year,
    :origin_location, :current_location, :context, :made_by, :material,
    :registration_num)
  end
end
