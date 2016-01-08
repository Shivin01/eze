class ContactusMailer < ActionMailer::Base

def contact_created(email)
	@email = email

	mail(to: email, 
		 from: "services@mydomain.com",
		 subject: "Eze Innovations",
		 body: "Thankyou for contacting Eze Innovations We will conatct you soon!"
	     )
	end

end