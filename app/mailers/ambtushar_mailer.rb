class AmbtusharMailer < ActionMailer::Base

def contact_created(name,email,college,course,year,number)
	@email = email
	@name = name
    @college = college
    @course = course
    @year = year
    @number = number


	mail(to: "tushar.ezeinno@gmail.com", 
		 from: "services@mydomain.com",
		 subject: "Ambassador program",
		 #body: "Thankyou for contacting Eze Innovations We will conatct you soon!"
	     )
	end

end