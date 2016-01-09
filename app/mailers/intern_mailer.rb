class InternMailer < ActionMailer::Base

def contact_created(name,email,college,course,year,number,field)
	@email = email
	@name = name
    @college = college
    @course = course
    @year = year
    @number = number
    @field = field

	mail(to: email, 
		 from: "services@mydomain.com",
		 subject: "EZe Innovations",
		 body: "Thankyou for contacting EZe Innovations. We will conatct you soon, for your internship program"
	     )
	end

end