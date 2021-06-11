class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @submission = Submission.new
  end
end
