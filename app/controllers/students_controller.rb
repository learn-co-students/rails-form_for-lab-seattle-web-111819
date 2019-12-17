class StudentsController < ApplicationController

  
  def index
    @students = Student.all 
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    # @student.new(params.require(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

# @post.update(title: params[:title], description: params[:description]) 
# @post.update(params.require(:post).permit(:title, :description))  
  def update
    @student = Student.find(params[:id])
    # @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    # @student.update(params.require(:student).permit(:first_name, :last_name))
    @student.update(student_params)
    redirect_to student_path(@student)
  end 

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end 
end