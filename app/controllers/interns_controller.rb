class InternsController < ApplicationController
	def index
	end

	def new
  	end

  	def create
    	@intern = Intern.new(intern_params)
    	if @intern.save
     		 redirect_to root_path, notice: "successfully sent"
    	else
     		 render interns_path
   		 end
  	end

  	private

    def intern_params
    params.require(:intern).permit(:name, :college, :course, :year, :email, :number, :field)
    end

end