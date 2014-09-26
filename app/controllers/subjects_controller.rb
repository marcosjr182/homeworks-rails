class SubjectsController < ApplicationController

  def create
    @grade = Grade.find(params[:grade_id])  
    @subject = @grade.subjects.create(subject_params)
    redirect_to grade_path(@grade)
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

end
