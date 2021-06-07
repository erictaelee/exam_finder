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
      user_id: params[:user_id],
      exam_id: params[:exam_id],
      start_time: params[:start_time]
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
