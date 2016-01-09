class AmbMailer < ActionMailer::Base

def contact_created(name,email,college,course,year,number)
	@email = email
	@name = name
    @college = college
    @course = course
    @year = year
    @number = number

	mail(to: email, 
		 from: "services@mydomain.com",
		 subject: "EZe Innovations",
		 body: "Thankyou for contacting EZe Innovations We will conatct you soon! for your ambassodar program"
	     )
	end

end