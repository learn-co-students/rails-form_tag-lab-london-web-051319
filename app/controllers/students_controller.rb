class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # render new_student_path
  end

  def create
    Student.create params.require(:student).permit(:first_name, :last_name)
    # Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path

  end

end
