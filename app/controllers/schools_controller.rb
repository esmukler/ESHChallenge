class SchoolsController < ApplicationController

  def index
    schools = School.all

    @avg_costs = schools.map do |school|
      [school.ben, school.avg_cost]
    end

    render :index
  end

end
