class IssuesController < ApplicationController
  def new
    @section = Section.find(params[:section_id])
    @issue = @section.issues.new
  end

  def create
    @section = Section.find(params[:section_id])
    @issue = @section.issues.new(issue_params)

    if @issue.save
      redirect_to @section, notice: "Issue was created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def issue_params
    params.require(:issue).permit(:title, :problem, :solution, :image, :solved, :section_id)
  end
end
