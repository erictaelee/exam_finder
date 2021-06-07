class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      college_id: @user.college_id,
      exam_id: @user.exam_id
    )
    @user.save
    render 'show.jason.jb'
  end
end
