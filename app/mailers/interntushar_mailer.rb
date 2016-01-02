class InterntusharMailer < ActionMailer::Base

def contact_created(name,email,college,course,year,number,field)
	@email = email
	@name = name
    @college = college
    @course = course
    @year = year
    @number = number
    @field = field

	mail(to: "tushar.ezeinno@gmail.com", 
		 from: "services@mydomain.com",
		 subject: "InternShip program",
		 #body: "Thankyou for contacting Eze Innovations We will conatct you soon!"
	     )
	end

end