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
    params.require(:submission).permit(:description)
  end
end
