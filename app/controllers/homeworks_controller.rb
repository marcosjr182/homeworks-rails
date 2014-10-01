class HomeworksController < ApplicationController
  before_action :set_homework, only: [:show, :edit, :update, :destroy]

  def create
    @grade = Grade.find(params[:grade_id])  
    @subject = @grade.subjects.find(params[:subject_id])
    @homework = @subject.homeworks.create(homework_params)
    redirect_to grade_subject_path(@grade,@subject)
  end
  
  def show
  end

  def edit
  end 

  def destroy
    @grade = Grade.find(params[:grade_id])
    @subject = @grade.subjects.find(params[:subject_id])
    @homework = @subject.homeworks.find(params[:id])
    @homework.destroy
    redirect_to grade_subject_path(@grade,@subject)
  end

  private
    def homework_params
      params.require(:homework).permit(:name, :deadline)
    end

    def set_homework
      @grade = Grade.find(params[:grade_id])
      @subject = @grade.subjects.find(params[:subject_id])
      @homework = @subject.homeworks.find(params[:id])
    end
end
