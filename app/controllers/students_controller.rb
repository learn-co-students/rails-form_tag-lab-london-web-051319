class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def create
    # byebug
  # Student.create(first_name: params[:post][:first_name], last_name: params[:post][:last_name])
  Student.create params.require(:student).permit(:first_name, :last_name)
  redirect_to students_path

  end

end
