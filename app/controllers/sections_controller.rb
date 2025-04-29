class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
    @issues = @section.issues
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)

    if @section.save
      redirect_to @section, notice: "Section created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def section_params
    params.require(:section).permit(:name)
  end
end
