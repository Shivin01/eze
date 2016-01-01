class LandsController < ApplicationController
	def index
	end

	def new
  	end

  	def create
    	@land = Land.new(land_params)
    	if @land.save
     		 redirect_to root_path, notice: "Message was successfully sent"
    	else
     		 render root_path
   		 end
  	end

  	private

    def land_params
    params.require(:land).permit(:firstname, :lastname, :email, :subject, :message)
    end

end