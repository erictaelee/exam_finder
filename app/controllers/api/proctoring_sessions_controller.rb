class Api::ProctoringSessionsController < ApplicationController
  def index
    @proctoring_sessions = ProctoringSession.all
    render "index.json.jb"
  end

  def show
    @proctoring_session = ProctoringSession.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @proctoring_session = ProctoringSession.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      # college_id: @user.college_id,
      # exam_id: @user.exam_id
    )
    @proctoring_session.save
    render 'show.json.jb'
  end

  def destroy
    @proctoring_session = ProctoringSession.find_by(id: params[:id])
    @proctoring_session.destroy
    render json: {message: "you deleted the proctoring_session"}
  end
end
