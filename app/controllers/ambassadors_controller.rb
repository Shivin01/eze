class AmbassadorsController < ApplicationController
	def index
	end

	def new
  	end

  	def create
    	@ambassador = Ambassador.new(ambassador_params)
    	if @ambassador.save
     		 redirect_to root_path, notice: "successfully sent"
    	else
     		 render ambassadors_path
   		 end
  	end

  	private

    def ambassador_params
    params.require(:ambassador).permit(:name, :college, :course, :year, :email, :number)
    end

end