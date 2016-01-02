class Contactus_Mailer < ActionMailer::Base

def contact_created(current_user,pin_user,content)
	@email = email
	@firstname = firstname
	@subject = subject
	@message = message

	mail(to: email, 
		 from: "services@mydomain.com",
		 subject: "Eze Innovations",
		 body: "Thankyou for contacting Eze Innovations We will conatct you soon!"
	     )
	end

end