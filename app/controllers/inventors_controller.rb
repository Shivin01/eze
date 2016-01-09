class InventorsController < ApplicationController
	def index
	end

	def new
  	end

  	 	def create
    	@inventor = Inventor.new(inventor_params)
    	if @inventor.save
    	InventorMailer.contact_created(@inventor.email).deliver
    	InvtusharMailer.contact_created(@inventor.name,@inventor.organisation,@inventor.email,@inventor.number,@inventor.intro).deliver
     		 redirect_to root_path, notice: "successfully sent"
    	else
     		 render inventors_path
   		 end
  	end

  	private

    def inventor_params
    params.require(:inventor).permit(:name, :organisation, :email, :number, :intro)
    end
end
