class InvtusharMailer < ActionMailer::Base

def contact_created(name,email,organisation,number,intro)
	@email = email
	@name = name
    @organisation = organisation
    @number = number
    @intro = intro

	mail(to: "tushar.ezeinno@gmail.com", 
		 from: "services@mydomain.com",
		 subject: "Internship program",
	     )
	end

end