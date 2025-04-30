class StepsController < ApplicationController
  def index
    @sections = Section.includes(:steps)
  end

  def show
    @section = Section.find(params[:section_id])
    @step = @section.steps.find(params[:id])
  end
end
