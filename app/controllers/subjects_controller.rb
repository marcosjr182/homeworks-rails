class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]

  def index
    @grade = Grade.find(params[:grade_id])
    redirect_to grade_path(@grade)
  end

  def create
    @grade = Grade.find(params[:grade_id])  
    @subject = @grade.subjects.create(subject_params)
    redirect_to grade_path(@grade)
  end
  
  def show
    @grade = Grade.find(params[:grade_id])
    @subject = @grade.subjects.find(params[:id])
  end

  def edit
  end 

  def destroy
    @grade = Grade.find(params[:grade_id])
    @subject = @grade.subjects.find(params[:id])
    @subject.destroy
    redirect_to grade_path(@grade)
  end

  private
    def subject_params
      params.require(:subject).permit(:name)
    end

    def set_subject
      @grade = Grade.find(params[:grade_id])
      @subject = @grade.subjects.find(params[:id])
    end

end
