class AmbassadorsController < ApplicationController
	def index
	end

	def new
  	end

  	def create
    	@ambassador = Ambassador.new(ambassador_params)
    	if @ambassador.save
        AmbMailer.contact_created(@ambassador.name,@ambassador.email,@ambassador.college,@ambassador.course,@ambassador.year,@ambassador.number).deliver
        AmbtusharMailer.contact_created(@ambassador.name,@ambassador.email,@ambassador.college,@ambassador.course,@ambassador.year,@ambassador.number).deliver
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