class StepsController < ApplicationController
  def index
    @steps = Step.all
    @sections = Section.includes(:steps)
  end
end
