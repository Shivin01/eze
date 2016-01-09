class ContactusMailer < ActionMailer::Base

def contact_created(email)
	@email = email

	mail(to: email, 
		 from: "services@mydomain.com",
		 subject: "EZe Innovations",
		 body: "Thankyou for contacting EZe Innovations. We will conatct you soon!"
	     )
	end

end